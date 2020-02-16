module ApplicationHelper
  
  # ページごとの完全なタイトルを返します。
  # サブtitleがない場合、MyTest…と表示します。
  def full_title(page_title = '')
    base_title = "MyTest"
    if page_title.empty?
      base_title
    else
      page_title + " | " + base_title
    end
  end
end