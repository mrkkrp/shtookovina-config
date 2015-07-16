;;;
;;; Ma configuration de Шτookωвiнα pour Français
;;;

(use-ui-language "fr")

(setf *shtooka-dirs*
      '(#P"/home/mark/Downloads/fr/fra-balm-conjug/"
        #P"/home/mark/Downloads/fr/fra-balm-flora-expr/"
        #P"/home/mark/Downloads/fr/fra-balm-flora-num/"
        #P"/home/mark/Downloads/fr/fra-balm-frank/"
        #P"/home/mark/Downloads/fr/fra-balm-tnitot/"
        #P"/home/mark/Downloads/fr/fra-balm-voc/"
        #P"/home/mark/Downloads/fr/fra-nallet-camille/"
        #P"/home/mark/Downloads/fr/fra-nallet-caroline/"
        #P"/home/mark/Downloads/fr/fra-nallet-christian/"
        #P"/home/mark/Downloads/fr/fra-nallet-denise/"
        #P"/home/mark/Downloads/fr/fra-nallet-marie/"
        #P"/home/mark/Downloads/fr/fra-nallet-nicolas/"
        #P"/home/mark/Downloads/fr/fra-nallet-odile/"
        #P"/home/mark/Downloads/fr/fra-wims-lettres/"
        #P"/home/mark/Downloads/fr/fra-wims-voc/"))

(define-hook :audio-query (filename)
  (format nil "flac -cd ~s | aplay" filename))

(define-hook :query-ext (word)
  (format nil "icecat -new-tab \"www.linguee.fr/francias-anglais/search?souce=auto&query=~a\""
          (hexify-string word)))

(define-hook :conj-ext (verb)
  (format nil "icecat -new-tab \"machaut.uchicago.edu/?verb=~a&action=search&resource=conjugator\""
          (hexify-string verb)))
