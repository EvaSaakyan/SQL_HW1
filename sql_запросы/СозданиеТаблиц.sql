CREATE TABLE "customers"(
    "customer_id" INTEGER NOT NULL,
    "first_name" VARCHAR(255) NOT NULL,
    "last_name" VARCHAR(255) NOT NULL,
    "gender" VARCHAR(255) NOT NULL,
    "dob" DATE NOT NULL,
    "job_title" VARCHAR(255) NOT NULL,
    "job_industry_category" VARCHAR(255) NOT NULL,
    "wealth_segment" VARCHAR(255) NOT NULL,
    "deceased_indicator" BOOLEAN NOT NULL,
    "owns_car" BOOLEAN NOT NULL,
    "address" VARCHAR(255) NOT NULL,
    "postcode" VARCHAR(255) NOT NULL,
    "state" VARCHAR(255) NOT NULL,
    "country" VARCHAR(255) NOT NULL,
    "property_valuation" DECIMAL(8, 2) NOT NULL
);

CREATE TABLE "products"(
    "product_id" INTEGER NOT NULL,
    "brand" VARCHAR(255) NOT NULL,
    "product_line" VARCHAR(255) NOT NULL,
    "product_class" VARCHAR(255) NOT NULL,
    "product_size" VARCHAR(255) NOT NULL,
    "list_price" DECIMAL(8, 2) NOT NULL,
    "standard_cost" DECIMAL(8, 2) NOT NULL
);

CREATE TABLE "orders"(
    "order_id" INTEGER NOT NULL,
    "customer_id" INTEGER NOT NULL,
    "order_date" TIMESTAMP(0) WITHOUT TIME ZONE NOT NULL,
    "online_order" BOOLEAN NOT NULL,
    "order_status" VARCHAR(255) NOT NULL
);

CREATE TABLE "order_items"(
    "order_item_id" INTEGER NOT NULL,
    "order_id" INTEGER NOT NULL,
    "product_id" INTEGER NOT NULL,
    "quantity" INTEGER NOT NULL,
    "item_list_price_at_sale" DECIMAL(8, 2) NOT NULL,
    "item_standard_cost_at_sale" DECIMAL(8, 2) NOT NULL
);
