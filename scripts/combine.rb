#!/usr/bin/env ruby


static = File.open("static.txt")
static.readlines.each do |static_heuristic|
    static_heuristic = static_heuristic.gsub("\n","")
    dynamic = File.open("dynamic.txt")
    dynamic.readlines.each do |dynamic_heuristic|
            dynamic_heuristic = dynamic_heuristic.gsub("\n","")
            str_output  ="#{static_heuristic},#{dynamic_heuristic}"
            if dynamic_heuristic.include? "GROUP"
                str_output = str_output + ",Y"
            end
            print "#{str_output}\n"
    end
    dynamic.close()
end


static.close()

