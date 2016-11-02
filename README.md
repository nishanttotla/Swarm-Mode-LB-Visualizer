# Swarm-Mode-LB-Visualizer
A simple bar chart visualization of the Docker Swarm mode load balancing requests across tasks.

Here's how to set it up.

## Get the code

First clone the git repo

```bash
$ git clone https://github.com/nishanttotla/Swarm-Mode-LB-Visualizer.git
```

This will create a new folder called `Swarm-Mode-LB-Visualizer`. Navigate to this folder for the next step.

## Run a local HTTP server

d3.js needs a local server running. A simple server of your choice should work. For example, we'll set up a Python server, from within the `Swarm-Mode-LB-Visualizer` directory

```bash
$ python -m SimpleHTTPServer 8000
```

You can edit the port number if necessary.

## Start visualization

Open a web browser and go to http://localhost:8000. If all went well, you should see a bar chart.