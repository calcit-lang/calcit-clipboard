
{} (:package |clipboard)
  :configs $ {} (:init-fn |clipboard.test/main!) (:reload-fn |clipboard.test/reload!) (:version |0.0.1)
    :modules $ []
  :entries $ {}
  :files $ {}
    |clipboard.core $ %{} :FileEntry
      :defs $ {}
        |copy! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn copy! (content)
              &call-dylib-edn (get-dylib-path "\"/dylibs/libclipboard") "\"copy" content
        |paste! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn paste! () $ &call-dylib-edn (get-dylib-path "\"/dylibs/libclipboard") "\"paste"
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns clipboard.core $ :require
            clipboard.$meta :refer $ calcit-dirname
            clipboard.util :refer $ get-dylib-path
    |clipboard.test $ %{} :FileEntry
      :defs $ {}
        |main! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn main! () $ run-tests
        |reload! $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn reload! $
        |run-tests $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn run-tests () (println "\"%%%% test for clipboard")
              println "\"read clipboard" $ paste!
              println "\"write to.." $ copy!
                str $ range 100
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns clipboard.test $ :require
            clipboard.core :refer $ copy! paste!
    |clipboard.util $ %{} :FileEntry
      :defs $ {}
        |get-dylib-ext $ %{} :CodeEntry (:doc |)
          :code $ quote
            defmacro get-dylib-ext () $ case-default (&get-os) "\".so" (:macos "\".dylib") (:windows "\".dll")
        |get-dylib-path $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn get-dylib-path (p)
              str (or-current-path calcit-dirname) p $ get-dylib-ext
        |or-current-path $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn or-current-path (p)
              if (blank? p) "\"." p
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns clipboard.util $ :require
            clipboard.$meta :refer $ calcit-dirname calcit-filename
