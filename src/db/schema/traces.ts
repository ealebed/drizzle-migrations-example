import { pgTable, serial, timestamp, jsonb, text } from "drizzle-orm/pg-core";

export const traces = pgTable("traces", {
  id: serial().primaryKey(),
  createdAt: timestamp().defaultNow(),
  updatedAt: timestamp().defaultNow(),
  modifiedBy: text().default(""),
  jsonData: jsonb().default("{}"),
});
