Simple Rshiny app to plot the histogram graph


Steps to run:-

1. Download Docker on your host
2. Start the docker service
3. Clone the repository on your workspace
```
git clone https://github.com/jayramr/simple-rshiny.git
```
4. Navigate to the code directory
5. Create the image build
```
docker build -t <name-of-image>  .
```
6. Start the container
```
docker run -p 4000:3838 <name-of-image>
```
8. Launch browser and hit "localhost:4000"
