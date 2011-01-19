(ns web.core
  (:gen-class :extends javax.servlet.http.HttpServlet)
  (:use compojure.core
		appengine.datastore
        [ring.util.servlet :only [defservice]]
		[ring.util.response  :only [redirect]]
        [hiccup.core :only [html]]
		[hiccup.form-helpers :only [form-to text-field]])
  (:require [compojure.route :as route]))

(defentity Post () ((title) (body)))

(defn render-page [title & body]
	(html {:mode :html}
		[:head [:title title]]
		[:body [:div#main body]]))

(defn render-post [post]
  [:div
   [:h2 (:title post)]
   [:p (:body post)]])

(defn get-posts [] (find-posts))

(defn list-posts []
  (render-page "List of saved items"
    (map render-post (get-posts))))

(def new-form
     (form-to [:post "/save"]
              [:fieldset
               [:legend "Save the following"]
               [:ol
                [:li
                 [:label {:for :title} "Title"]
                 (text-field :title)]]
               [:button {:type "submit"} "Save!"]]))

(defn create-post [title & body]
  (save-entity (post {:title title}))
  (redirect "/"))

(defroutes webapp 
  (GET "/" [] (list-posts))
  (GET  "/new"  [] (render-page "New Entry" new-form))
  (POST "/save" [title] (create-post title))
  (route/not-found "not found"))

(defservice webapp)
