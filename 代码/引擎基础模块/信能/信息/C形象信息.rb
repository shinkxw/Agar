#!/usr/bin/env ruby -w
# encoding: UTF-8
class C形象信息 < C信息
  可读属性 :形状, :特征信息
  def 初始化(形状, 特征信息)
    @形状, @特征信息 = 形状, 特征信息
  end
  def 字符串
    "形象信息  形状: #{@形状.字符串} 特征信息: #{@特征信息.字符串}"
  end
end
