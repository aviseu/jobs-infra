upgrade:
	sh -c "cd load_balancer; terraform init -upgrade"
	sh -c "cd database; terraform init -upgrade"
