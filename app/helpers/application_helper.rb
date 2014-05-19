module ApplicationHelper

  def full_title(page_title)
    base_title = "深圳馨窝网sz.xinwowang.com深圳房地产团购、电商第一门户"
    if page_title.empty?
      base_title
    else
      "#{page_title}|#{base_title} "
    end
  end

  def full_key(page_key)
    base_key = "深圳房产网,深圳房产,深圳房地产,深圳买房,深圳新房,深圳房价,深圳楼盘,角美房产网,深圳开发区房产网"
    if page_key.empty?
      base_key
    else
      page_key
    end
  end
  
  MOBILE_USER_AGENTS =  'palm|blackberry|nokia|phone|midp|mobi|symbian|chtml|ericsson|minimo|' +
                        'audiovox|motorola|samsung|telit|upg1|windows ce|ucweb|astel|plucker|' +
                        'x320|x240|j2me|sgh|portable|sprint|docomo|kddi|softbank|android|mmp|' +
                        'pdxgw|netfront|xiino|vodafone|portalmmm|sagem|mot-|sie-|ipod|up\\.b|' +
                        'webos|amoi|novarra|cdm|alcatel|pocket|iphone|mobileexplorer|mobile'
  def mobile?
    agent_str = request.user_agent.to_s.downcase
    return false if agent_str =~ /ipad/
    agent_str =~ Regexp.new(MOBILE_USER_AGENTS)
  end


end
