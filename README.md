# README

# Country Information codes

**Description:**
The company has a need for a standardised internal source of country information. Using Ruby or Python and one of the accompanying technologies, Rails, Django or React to complete the requirements below.

Requirements:

List all countries providing at least country name, alpha 2 code, alpha 3 code and the currencies available. Please allow for the ability to filter on currency.

Return a single country based upon the alpha 2 or alpha 3 code

An interface to allow “soft-deletion” of countries.

**Built with:**

- Frontend: React
- Backend: Rails

**Technologies used:**

- ReactJS/Redux
- EcmaScript 6
- Bootstrap
- react-test-renderer
- react-testing-library
- buildpack
- PostgreSQL
- react-router-dom
- axios

**Project Links:**

**API:**

- [Country Info Front-end](https://github.com/tnyandoro/country-info) (Link to API repository)

**Project Setup:**
You can clone the project on your local machine by running:

git clone <https://github.com/tnyandoro/country-info-api.git>
cd the-gentleman-app


1. cd country-info-api

2. bundle install

3. **Set Up the Database:**Assuming you have PostgreSQL installed:

    * Open config/database.yml and configure your database credentials (username, password, etc.).

    * rails db:createrails db:migrate

4. rails serverThis will start the Rails server at <http://localhost:3000>.

5. **Verify the API is Running:**Open a web browser and go to <http://localhost:3000/api/v1/countries>. You should see JSON data representing the countries stored in your database.

### Step 2: Clone and Set Up the React Frontend

1. git clone <https://github.com/tnyandoro/country-info.git>

2. cd country-info

3. npm install

4. **Configure Environment Variables:**

    * Create a .env file in the root of your React project.

    * REACT\_APP\_API\_BASE\_URL=<http://localhost:3000/api/v1>

5. npm start This will start the React development server and open your browser at <http://localhost:3000>.

6. **Verify the Frontend is Running:**Your React frontend should now be running and should fetch data from the Rails API at <http://localhost:3000/api/v1/countries>.

### Additional Notes

* **Cross-Origin Requests (CORS)**: If you encounter CORS issues while fetching data from the Rails API, ensure that CORS is configured correctly on the Rails server to allow requests from <http://localhost:3000>.

* **Testing**: Once both servers are running, you can interact with the React frontend to test if it correctly fetches and displays data from the Rails API.

