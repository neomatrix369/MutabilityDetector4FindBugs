workflow "Meterian Scanner workflow" {
	on = "push"
	resolves = ["Meterian Scanner Action"]
}

action "Meterian Scanner Action" {
	uses = "MeterianHQ/meterian-github-action@master"
	secrets = ["METERIAN_API_TOKEN"]
	args = "" ## placeholder for METERIAN_CLI_ARGS
}