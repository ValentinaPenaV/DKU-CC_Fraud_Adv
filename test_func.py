def unique_values (df,col="Merchant_IPcountry"):
    return df[col].unique().tolist()
