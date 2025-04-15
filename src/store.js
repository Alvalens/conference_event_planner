import { configureStore } from "@reduxjs/toolkit";
import venueReducer from "./venueSlice";
import avReducer from "./avSlice";
import mealsReducer from "./mealsSlice";

export default configureStore({
	reducer: {
		venue: venueReducer,
		av: avReducer,
		meals: mealsReducer,
	},
});
// This code sets up a Redux store using the Redux Toolkit. It imports the necessary functions and reducers from different slices (venueSlice, avSlice, and mealsSlice) and combines them into a single store. The store can then be used in a React application to manage global state related to venues, audiovisual equipment, and meals for a conference event.
// The store is configured with the `configureStore` function, which simplifies the setup process and automatically includes useful middleware for development. This allows for a more efficient and organized way to manage state in a React application.