# Logstash Local

This project provides a safe environment in which to test
logstash config.

It requires Docker.

## Usage

Fork/clone/download this repo and `cd` into it in your terminal.

To start the local environment, run `make` in your terminal

Wait for logstash to be ready.

Add lines to the `input.txt` file and save, then open the 
`output.json` file to see the resulting log format.

To clear both of these files, run `make clear`.

Add filters etc to the `logstash.conf` file. The logstash container
is configured to watch and automatically reload the config if
it changes.

To tear it all down, run `make rm`
