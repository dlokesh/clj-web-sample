(defproject clj-web-sample "1.0.0-SNAPSHOT"
  :description "Web application in Clojure"
  :namespaces [web.core]
  :dependencies [[org.clojure/clojure "1.2.0"]
                 [org.clojure/clojure-contrib "1.2.0"]
		 [compojure "0.5.3"]
		 [hiccup "0.3.1"]
		 [ring/ring-servlet "0.3.1"]
		 [appengine "0.4.3-SNAPSHOT"]]
  :dev-dependencies [[swank-clojure "1.3.0-SNAPSHOT"]
                     [com.google.appengine/appengine-api-labs "1.4.0"]
                     [com.google.appengine/appengine-api-stubs "1.4.0"]
                     [ring/ring-jetty-adapter "0.3.1"]
                     [com.google.appengine/appengine-local-runtime "1.4.0"]]
  :compile-path "war/WEB-INF/classes"
  :library-path "war/WEB-INF/lib"
  :keep-non-project-classes true)


