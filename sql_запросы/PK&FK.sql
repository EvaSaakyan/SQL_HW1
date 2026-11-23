ALTER TABLE
    "customers" ADD PRIMARY KEY("customer_id");
ALTER TABLE
    "products" ADD PRIMARY KEY("product_id");
ALTER TABLE
    "orders" ADD PRIMARY KEY("order_id");
ALTER TABLE
    "order_items" ADD PRIMARY KEY("order_item_id");
ALTER TABLE
    "customers" ADD CONSTRAINT "customers_state_id_foreign" FOREIGN KEY("state_id") REFERENCES "states"("state_id");
ALTER TABLE
    "order_items" ADD CONSTRAINT "order_items_product_id_foreign" FOREIGN KEY("product_id") REFERENCES "products"("product_id");
ALTER TABLE
    "orders" ADD CONSTRAINT "orders_customer_id_foreign" FOREIGN KEY("customer_id") REFERENCES "customers"("customer_id");
ALTER TABLE
    "order_items" ADD CONSTRAINT "order_items_order_id_foreign" FOREIGN KEY("order_id") REFERENCES "orders"("order_id");


