# ToPy Playground
A small set of software to get you up and running with ToPy quickly and easily. 

### Background
If you are interested in playing around with ToPy, it can be a bit tricky (and time consuming) to build the development environment and get all the dependencies installed. To make this process a bit easier to manage, Docker will be used to get everything set up automatically.

### Install Info
To generate a new ToPy development environment, you will need <a href="https://www.docker.com/get-docker">Docker</a> installed on your computer. Once you have Docker installed, enter the following commands in a terminal to get a Docker image built up.

```
git clone https://github.com/ph1ash/topy_playground.git
cd topy_playground
docker build -t topy_env:latest .
```
<b><u>Do note</u></b> that if you have the slightest inclination that visualization could be used at some point, continue on to "Viewing VTKs \<your host OS>". Otherwise, if you simply wish to have an environment to generate VTKs without the need for visualization, just run <code>docker run -it topy_env</code> and you will connect to your newly created topy_env container. 

### Viewing VTKs in Linux
<i>You may need to execute the following shell script using <code>sudo</code> for a container to be generated successfully depending on how Docker was installed.</i>

```
cd topy_playground
./linux_gen_topy_env.sh
```

After running the script above, the container will connect and provide a command prompt. To get an idea of how to visualize a VTK file, a sample VTK file is available in <code>sample_vtks</code>. To view the sample file, run the following command.
```
cd topy_playground
python vtk_viewer sample_vtks/super_cube_050.vtk
```

### Viewing VTKs in Windows
In the works!

### Helpful Tools
#### ToPy Optimiser Script
A simple optimizer script that is provided in the <a href="https://github.com/williamhunter/topy">ToPy Github</a> has been pulled into the container for you to use. To run this, enter in the following command:
```
cd topy_playground
python optimise.py <your_tpd_here.tpd>
```
