
{} (:package |clipboard)
  :configs $ {} (:init-fn |clipboard.test/main!) (:reload-fn |clipboard.test/reload!)
    :modules $ []
    :version |0.0.1
  :entries $ {}
  :files $ {}
    |clipboard.core $ {}
      :ns $ quote
        ns clipboard.core $ :require
          clipboard.$meta :refer $ calcit-dirname
          clipboard.util :refer $ get-dylib-path
      :defs $ {}
        |copy! $ quote
          defn copy! (content)
            &call-dylib-edn (get-dylib-path "\"/dylibs/libclipboard") "\"copy" content
        |paste! $ quote
          defn paste! () $ &call-dylib-edn (get-dylib-path "\"/dylibs/libclipboard") "\"paste"
    |clipboard.test $ {}
      :ns $ quote
        ns clipboard.test $ :require
          clipboard.core :refer $ copy! paste!
      :defs $ {}
        |run-tests $ quote
          defn run-tests () (println "\"%%%% test for clipboard")
            println "\"read clipboard" $ paste!
            println "\"write to.." $ copy!
              str $ range 100
        |main! $ quote
          defn main! () $ run-tests
        |reload! $ quote
          defn reload! $
    |clipboard.util $ {}
      :ns $ quote
        ns clipboard.util $ :require
          clipboard.$meta :refer $ calcit-dirname calcit-filename
      :defs $ {}
        |get-dylib-ext $ quote
          defmacro get-dylib-ext () $ case-default (&get-os) "\".so" (:macos "\".dylib") (:windows "\".dll")
        |get-dylib-path $ quote
          defn get-dylib-path (p)
            str (or-current-path calcit-dirname) p $ get-dylib-ext
        |or-current-path $ quote
          defn or-current-path (p)
            if (blank? p) "\"." p
