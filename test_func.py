def unique_values (df,col="MerchantIP_country"):
    return df[col].unique().tolist()
