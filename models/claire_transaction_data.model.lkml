connection: "postgres_production"

# include all the views
include: "/views/**/*.view"

datagroup: claire_transaction_data_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: claire_transaction_data_default_datagroup

explore: userspend {}

# explore: altdgmapping {}

# explore: altdgmapping_dedupe {}

# explore: categorybrand {}

# explore: categorybrand_new {}

# explore: company_logo {}

# explore: creditbuildersignup {}

# explore: crossbrands {}

# explore: crossbuy {}

# explore: dist_altdg_clean {}

# explore: dist_altdgdata {}

# explore: download_funnel {}

# explore: foursquarechain {}

# explore: foursquarevenue {}

# explore: foursquarevenuechain {}

# explore: foursquarevisit {}

# explore: foursquarevisitvenue {}

# explore: fullfunnel {}

# explore: majorbrands {}

# explore: mappedtransaction_20200617 {}

# explore: max_by_date {}

# explore: moving_90_ticker {}

# explore: outflows {}

# explore: plaidaccountledger {}

# explore: plaidlinkneedsupdate {}

# explore: plaidtransaction {}

# explore: receiptheader {}

# explore: receiptpaymentmethods {}

# explore: receiptproducts {}

# explore: remi_looker_test {}

# explore: stock_ticker {}

# explore: user_data {}

# explore: userspend_new {}

# explore: userspend_top {}

