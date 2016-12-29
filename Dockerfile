FROM microsoft/dotnet:1.0.1-sdk-projectjson

# Create directory for the app source code
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Copy the source and restore dependencies
COPY . /usr/src/app
RUN dotnet restore

# Expose the port and start the app
EXPOSE 5000
CMD [ "dotnet", "run" ]