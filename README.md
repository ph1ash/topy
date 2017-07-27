# ToPy Playground
A small set of software to get you up and running with ToPy quickly and easily.

### Background Info
If you are interested in playing around with ToPy, it can be a bit tricky (and time consuming) to get all the dependencies installed. To make this process a bit easier to manage, Docker will be used to get everything set up automatically.

To run the file and get things configured, you will need Docker installed on your computer already.  Once you have Docker installed, follow these steps to get a Docker container built up which will function as a ToPy development environment.

```
git clone https://github.com/ph1ash/topy_playground.git
cd topy_playground
docker build -t topy_env:latest .
```

Once the build command has finished, just run <code>docker run -it topy_env</code> and you will log in (attach) to your newly created topy_env container!

A simple optimizer script that is provided in the <a href="https://github.com/williamhunter/topy">ToPy Github</a> has been pulled into the container for you to use. To run this, enter in the following command:

<code>python optimise.py <your_tpd_here.tpd></code>
