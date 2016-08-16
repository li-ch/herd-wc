for i in `seq 0 64`; do		# Lossy index and circular log
	sudo ipcrm -M $i
done
ipcrm -M 3185			# Request region at server
ipcrm -M 13186			# Response region at server
