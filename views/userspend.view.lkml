view: userspend {
  sql_table_name: public.userspend ;;

  dimension: categorylevel1 {
    label: "category level 1"
    type: string
    sql: ${TABLE}."categorylevel1" ;;
  }

  dimension: categorylevel2 {
    type: string
    sql: ${TABLE}."categorylevel2" ;;
  }

  dimension: num_transactions {
    type: number
    sql: ${TABLE}."num_transactions" ;;
  }

  dimension: spend {
    type: number
    sql: ${TABLE}."spend" ;;
  }

  dimension: standardizedname {
    type: string
    sql: ${TABLE}."standardizedname" ;;
  }

  dimension: stringtransactiondate {
    type: string
    sql: ${TABLE}."stringtransactiondate" ;;
  }

  dimension: date {
    type: date
    sql: to_date(${TABLE}."stringtransactiondate",'YYYY-MM-DD') ;;
  }

  dimension: userid {
    type: string
    sql: ${TABLE}."userid" ;;
  }

  measure: count {
    type: count
    drill_fields: [standardizedname]
  }
  measure: total_spend {
    type: sum
    sql: ${spend} ;;
  }
  measure: transactions {
    type: sum
    sql: ${num_transactions} ;;
  }
}
