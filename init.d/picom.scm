(define picom
  (make <service>
    #:provides '(picom)
    #:docstring "Excecute Picom compositor"
    #:start (make-forkexec-constructor
	     '("guix" "environment" "--ad-hoc" "picom" "--"
	       "picom" "--log-file" "~/.picomlog"))
    #:stop (make-kill-destructor)
    #:respawn #t
    ))

(register-services picom)


