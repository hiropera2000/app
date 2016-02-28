class EmpController < ApplicationController
  def input
    # text box の表示
  end

  def reset
    # データの初期化
  end

  def get_tables
    # テーブル構造の取得
    query = "SELECT TABLE_NAME FROM USER_TABLES"
    @result = ActiveRecord::Base.connection.select_all(query)
    render action :input
  end

  def submit
    @exec_query = params[:query]["content"]
    # 取得したクエリ
    #query = "select * from EMPS"
    q = Query.new
    q.q_select = @exec_query
    q.q_num = 0
    q.save!

    # 構文チェック
    exp_query = "explain plan for " + @exec_query
    # 実行計画
    @exp = ActiveRecord::Base.connection.execute(exp_query)
    # 実行結果取得
    @exp_ret = ActiveRecord::Base.connection.select_all("SELECT PLAN_TABLE_OUTPUT FROM TABLE(DBMS_XPLAN.DISPLAY())")
    # クエリ結果取得
    @result = ActiveRecord::Base.connection.select_all(@exec_query)
    render action: :input
  end

  def show
    # 結果の表示
  end
end
