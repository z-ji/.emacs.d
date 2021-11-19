;;; init config of Solidity language for smart contracts

(require 'solidity-mode)

;;; Autocompletion 
(require 'company-solidity)

(add-hook 'solidity-mode-hook
	(lambda ()
	(set (make-local-variable 'company-backends)
		(append '((company-solidity company-capf company-dabbrev-code))
			company-backends))))

(provide 'init-solidity)
