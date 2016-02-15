#!/usr/bin/env ruby -w
# encoding: UTF-8
class C代理对象
  def self.支持(*行动名称)
    @支持行动 ||= []
    行动名称.每个{|名称| @支持行动 << 名称}
  end
  def self.支持行动;@支持行动 end
  def self.支持?(行动名称);@支持行动.包含?(行动名称) end
  支持 :销毁
  def self.创建(*参数);新建(*参数.前(1)) end
  def 初始化(对象)
    @对象 = 对象
    @是否销毁 = false
  end
  def 已被销毁?;@是否销毁 end
  def 销毁(事件)
    return if @是否销毁
    @是否销毁 = true
  end
  def 字符串;@对象.名称 end
end
