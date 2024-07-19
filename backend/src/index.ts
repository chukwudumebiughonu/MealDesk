
import express, { Request, Response } from "express";
import cors from "cors";
import "dotenv/config";
import mongoose from "mongoose";

const app = express();
app.use(express.json());
app.use(cors());

const connectWithRetry = async () => {
  const maxRetries = 5;
  let retries = 0;

  while (retries < maxRetries) {
    try {
      await mongoose.connect(process.env.MONGODB_CONNECTION_STRING as string);
      console.log("Connected to database");
      return;
    } catch (error) {
      console.error(`Connection attempt ${retries + 1} failed:`, error);
      retries++;
      // Wait for 5 seconds before trying again
      await new Promise(resolve => setTimeout(resolve, 5000));
    }
  }

  console.error("Failed to connect to the database after multiple attempts");
  process.exit(1);
};

mongoose.connection.on('disconnected', () => {
  console.log('MongoDB disconnected. Attempting to reconnect...');
  connectWithRetry();
});

connectWithRetry();

app.get("/test", async (req: Request, res: Response) => {
  res.json({ message: "Hello" });
});

app.listen(9000, () => {
  console.log("Server started on localhost:9000");
});