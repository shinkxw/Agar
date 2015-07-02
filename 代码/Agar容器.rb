#!/usr/bin/env ruby -w
# encoding: UTF-8
class Agar容器
  attr_reader :长, :宽
  def initialize(长, 宽)
    @长, @宽, @Agar数组 = 长, 宽, []
    帧数变量, 利用率变量 = TK变量.新建, TK变量.新建
    帧数回调 = ->(帧数) {帧数变量.值 = 帧数.格式转换("%.2f")}
    利用率回调 = ->(利用率) {利用率变量.值 = (利用率 * 100).格式转换("%.2f%%")}
    @限帧器 = C限帧器.新建(Agar配置.最高帧数, 帧数回调, 利用率回调)
    @父界面 = TK主界面.新建("Agar", 长 + 20, 宽 + 50)
    @帧数显示 = TK标签.新建(@父界面).设置变量(帧数变量)
    @利用率显示 = TK标签.新建(@父界面).设置变量(利用率变量)
    @画布 = TK画布.新建(@父界面, @长, @宽, true)
    @画布.背景色 = 'green'
    @画布.设置卷动单位长度(1, 1)
  end
  def 添加(agar, 是否跟踪 = false)
    agar.生成精灵(@画布, 随机(@长), 随机(@宽))
    @Agar数组 << agar
    设置跟踪对象(agar) if 是否跟踪
  end
  def 数量;@Agar数组.数量 end
  def 可视化;K可视化模块.后台运行 end
  def 运行
    可视化
    loop do
      K可视化模块.延迟显示 do
        ager运动
        画面卷动
      end
      @限帧器.调用
      break if 退出判断
    end
  end
  def ager运动
    @Agar数组.每个{|agar| agar.运动}
  end
  def 画面卷动
    卷动向量 = @跟踪对象.坐标 - @上次坐标
    @画布.卷动(卷动向量)
    @上次坐标 = @跟踪对象.坐标
    
  end
  def 设置跟踪对象(跟踪对象)
    @跟踪对象 = 跟踪对象
    @上次坐标 = @跟踪对象.坐标
  end
  def 退出判断;S键盘.ESCAPE? end
  #~ include Enumerable
  #~ def each;@Agar数组.每个{|agar| yield(Agar)} end
end

定义测试集 'Agar容器测试' do
  初始化 {@容器 = Agar容器.新建(500, 500)}
  
  添加测试 'Agar添加测试' do
    添加数量 = 随机(500)
    添加数量.次{@容器.添加(Agar.新建)}
    @容器.数量.应该为 添加数量
  end
end