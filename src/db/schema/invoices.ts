import { pgTable, serial, timestamp, jsonb, text } from "drizzle-orm/pg-core";

export const invoices = pgTable("invoices", {
  id: serial().primaryKey(),
  created_at: timestamp().defaultNow(),
  updated_at: timestamp().defaultNow(),
  modified_by: text().default(""),
  json_data: jsonb().default("{}"),
});
