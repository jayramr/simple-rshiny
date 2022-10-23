Simple Rshiny app to plot the histogram graph


Steps to run:-

Download Docker on your host
Start the docker service
Clone the repository on your workspace
```
git clone https://github.com/jayramr/simple-rshiny.git
```
Navigate to the code directory
Create the image build
```
docker build -t <name-of-image>  .
```
Start the container
docker run -p 4000:3838 <name-of-image>
Launch browser and hit "localhost:4000"
