#!/usr/bin/env ruby -w
# encoding: UTF-8
class Agar容器
  attr_reader :长, :宽
  def initialize(长, 宽)
    @长, @宽, @Agar数组 = 长, 宽, []
  end
  def 添加(agar)
    agar.x, agar.y = 随机(@长), 随机(@宽)
    @Agar数组 << agar
  end
  def 数量;@Agar数组.数量 end
  
  include Enumerable
  def each;@Agar数组.each{|agar| yield(Agar)} end
end

定义测试集 'Agar容器测试' do
  初始化 {@容器 = Agar容器.新建(500, 500)}
  
  添加测试 'Agar添加测试' do
    添加数量 = 随机(500)
    添加数量.次{@容器.添加(Agar.新建)}
    @容器.数量.应该为 添加数量
  end
end