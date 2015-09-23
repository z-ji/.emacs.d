(setq display-time-default-load-average 'nil);;do not display the load average in the mode-line，须放在(diplay-time)前面
(setq display-time-interval 1)
(setq display-time-format "%t%t%t%t%H:%M:%S %A");也应放在(display-time)前面
(display-time)
(setq display-time-day-and-date t)                             ;打开日期显示p
(setq display-time-24hr-format t)                              ;打开24小时显示模式
(provide 'init-time-in-mode-line)
