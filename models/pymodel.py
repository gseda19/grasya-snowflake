from snowflake.snowpark import DataFrame, functions as F, Window, types as T, Session
from snowflake.snowpark.functions import col

def model(dbt, session: Session):
    # Sample data creation
    data = [
        {"PRODUCT_ID": 1, "ITEM_ID": 101, "SALE_DATE": "2021-01-01"},
        {"PRODUCT_ID": 2, "ITEM_ID": 102, "SALE_DATE": "2021-01-02"},
        {"PRODUCT_ID": 3, "ITEM_ID": 103, "SALE_DATE": "2021-01-03"}
    ]
    df = session.create_dataframe(data)

    # Select operation and caching the result directly in the return statement
    return df.select(col("PRODUCT_ID"), col("ITEM_ID"), col("SALE_DATE")).cache_result()
