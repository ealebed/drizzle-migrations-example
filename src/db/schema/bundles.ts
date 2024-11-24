import { integer, pgTable, text, timestamp, jsonb } from "drizzle-orm/pg-core";

export const bundlesTable = pgTable("bundles", {
    id: integer().primaryKey().notNull(),
    created_at: timestamp().defaultNow(),
    updated_at: timestamp().defaultNow(),
    json_data: jsonb().default("{}"),
    modified_by: text().default("")
});
