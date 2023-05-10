# using Node v10
FROM node:10

# Create app directory
WORKDIR /usr/src/lafs

# Install app dependencies
# A wildcard is used to copy both package.json and package-lock.json
COPY package*.json ./

# install Angular CLI
RUN npm install -g @angular/cli@v6-lts
RUN npm install
# for production builds
# RUN npm ci --only=production

# Bundle app source
COPY . .

# Expose port outside container
EXPOSE 4200
# Start application
CMD ng serve --host 0.0.0.0