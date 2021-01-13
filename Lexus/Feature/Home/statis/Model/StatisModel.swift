//
//  StatisModel.swift
//  Lexus
//
//  Created by harton on 2021/1/13.
//

import UIKit

struct StatisModel {
    
    ///期号
    var issue : Int
    
    ///红球
    var red1 : Int
    var red2 : Int
    var red3 : Int
    var red4 : Int
    var red5 : Int
    
    //    篮球
    var blue1 : Int
    var blue2 : Int
    
    //摇奖套装
    var type : Int
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    public static let allData : [StatisModel] = {
        var values : [StatisModel] = [
            StatisModel(issue: 20001, red1: 17, red2: 25, red3: 26, red4: 32, red5: 34, blue1: 4, blue2: 7, type: 1),
            StatisModel(issue: 20002, red1: 3,  red2: 7,  red3: 18, red4: 25, red5: 30, blue1: 2, blue2: 7, type: 2),
            StatisModel(issue: 20003, red1: 23, red2: 25, red3: 26, red4: 30, red5: 34, blue1: 3, blue2: 7, type: 2),
            StatisModel(issue: 20004, red1: 17, red2: 20, red3: 21, red4: 29, red5: 30, blue1: 5, blue2: 9, type: 2),
            StatisModel(issue: 20005, red1: 6,  red2: 10, red3: 33, red4: 34, red5: 35, blue1: 1, blue2: 3, type: 3),
            StatisModel(issue: 20006, red1: 9,  red2: 22, red3: 25, red4: 31, red5: 32, blue1: 8, blue2: 12, type: 3),
            StatisModel(issue: 20007, red1: 2,  red2: 10, red3: 19, red4: 24, red5: 30, blue1: 5, blue2: 8, type: 2),
            StatisModel(issue: 20008, red1: 14, red2: 17, red3: 19, red4: 24, red5: 32, blue1: 1, blue2: 6, type: 1),
            StatisModel(issue: 20009, red1: 19, red2: 29, red3: 31, red4: 34, red5: 35, blue1: 6, blue2: 10, type: 3),
            StatisModel(issue: 20010, red1: 1,  red2: 8,  red3: 13, red4: 24, red5: 32, blue1: 2, blue2: 9, type: 2),
            StatisModel(issue: 20011, red1: 2,  red2: 13, red3: 19, red4: 22, red5: 23, blue1: 2, blue2: 7, type: 1),
            StatisModel(issue: 20012, red1: 1,  red2: 6,  red3: 18, red4: 32, red5: 34, blue1: 1, blue2: 3, type: 2),
            StatisModel(issue: 20013, red1: 1,  red2: 4,  red3: 5,  red4: 11, red5: 35, blue1: 3, blue2: 9, type: 1),
            StatisModel(issue: 20014, red1: 3,  red2: 7,  red3: 9,  red4: 17, red5: 21, blue1: 3, blue2: 6, type: 3),
            StatisModel(issue: 20015, red1: 1,  red2: 7,  red3: 23, red4: 24, red5: 26, blue1: 3, blue2: 7, type: 3),
            StatisModel(issue: 20016, red1: 4,  red2: 8,  red3: 19, red4: 31, red5: 35, blue1: 1, blue2: 2, type: 2),
            StatisModel(issue: 20017, red1: 1,  red2: 6,  red3: 7,  red4: 9,  red5: 10, blue1: 2, blue2: 11, type: 3),
            StatisModel(issue: 20018, red1: 9,  red2: 14, red3: 16, red4: 24, red5: 26, blue1: 4, blue2: 12, type: 1),
            StatisModel(issue: 20019, red1: 1,  red2: 12, red3: 22, red4: 23, red5: 33, blue1: 1, blue2: 12, type: 1),
            StatisModel(issue: 20020, red1: 8,  red2: 10, red3: 12, red4: 26, red5: 32, blue1: 5, blue2: 9, type: 2),
            StatisModel(issue: 20021, red1: 10, red2: 12, red3: 24, red4: 31, red5: 33, blue1: 4, blue2: 9, type: 3),
            StatisModel(issue: 20022, red1: 4,  red2: 14, red3: 20, red4: 28, red5: 35, blue1: 2, blue2: 3, type: 3),
            StatisModel(issue: 20023, red1: 4,  red2: 11, red3: 23, red4: 26, red5: 30, blue1: 1, blue2: 6, type: 3),
            StatisModel(issue: 20024, red1: 3,  red2: 5,  red3: 6,  red4: 24, red5: 30, blue1: 3, blue2: 7, type: 2),
            StatisModel(issue: 20025, red1: 2,  red2: 14, red3: 21, red4: 22, red5: 26, blue1: 5, blue2: 7, type: 3),
            StatisModel(issue: 20026, red1: 3,  red2: 15, red3: 26, red4: 32, red5: 34, blue1: 8, blue2: 12, type: 2),
            StatisModel(issue: 20027, red1: 4,  red2: 7,  red3: 20, red4: 25, red5: 32, blue1: 3, blue2: 9, type: 1),
            StatisModel(issue: 20028, red1: 4,  red2: 5,  red3: 28, red4: 34, red5: 35, blue1: 1, blue2: 8, type: 1),
            StatisModel(issue: 20029, red1: 11, red2: 14, red3: 17, red4: 22, red5: 30, blue1: 7, blue2: 9, type: 2),
            StatisModel(issue: 20030, red1: 1,  red2: 8,  red3: 17, red4: 27, red5: 30, blue1: 5, blue2: 6, type: 2),
            StatisModel(issue: 20031, red1: 1,  red2: 2,  red3: 5,  red4: 15, red5: 21, blue1: 4, blue2: 5, type: 2),
            StatisModel(issue: 20032, red1: 2,  red2: 3,  red3: 9,  red4: 16, red5: 32, blue1: 3, blue2: 4, type: 1),
            StatisModel(issue: 20033, red1: 7,  red2: 19, red3: 20, red4: 31, red5: 34, blue1: 5, blue2: 8, type: 3),
            StatisModel(issue: 20034, red1: 11, red2: 13, red3: 20, red4: 27, red5: 31, blue1: 2, blue2: 4, type: 1),
            StatisModel(issue: 20035, red1: 10, red2: 11, red3: 22, red4: 26, red5: 28, blue1: 2, blue2: 4, type: 3),
            StatisModel(issue: 20036, red1: 1,  red2: 5,  red3: 11, red4: 12, red5: 26, blue1: 2, blue2: 7, type: 1),
            StatisModel(issue: 20037, red1: 1,  red2: 4,  red3: 10, red4: 11, red5: 14, blue1: 2, blue2: 5, type: 1),
            StatisModel(issue: 20038, red1: 4,  red2: 15, red3: 20, red4: 22, red5: 24, blue1: 1, blue2: 9, type: 3),
            StatisModel(issue: 20039, red1: 1,  red2: 5,  red3: 15, red4: 22, red5: 31, blue1: 2, blue2: 9, type: 2),
            StatisModel(issue: 20040, red1: 2,  red2: 17, red3: 20, red4: 28, red5: 29, blue1: 1, blue2: 7, type: 2),
            StatisModel(issue: 20041, red1: 7,  red2: 13, red3: 20, red4: 29, red5: 34, blue1: 4, blue2: 7, type: 3),
            StatisModel(issue: 20042, red1: 3,  red2: 4,  red3: 5,  red4: 11, red5: 22, blue1: 5, blue2: 6, type: 1),
            StatisModel(issue: 20043, red1: 12, red2: 13, red3: 17, red4: 31, red5: 32, blue1: 1, blue2: 6, type: 3),
            StatisModel(issue: 20044, red1: 1,  red2: 3,  red3: 22, red4: 28, red5: 30, blue1: 2, blue2: 5, type: 3),
            StatisModel(issue: 20045, red1: 2,  red2: 9,  red3: 16, red4: 23, red5: 27, blue1: 3, blue2: 8, type: 3),
            StatisModel(issue: 20046, red1: 15, red2: 24, red3: 27, red4: 30, red5: 34, blue1: 4, blue2: 12, type: 1),
            StatisModel(issue: 20047, red1: 4,  red2: 18, red3: 27, red4: 28, red5: 30, blue1: 3, blue2: 10, type: 1),
            StatisModel(issue: 20048, red1: 3,  red2: 9,  red3: 10, red4: 15, red5: 16, blue1: 7, blue2: 9, type: 3),
            StatisModel(issue: 20049, red1: 3,  red2: 11, red3: 15, red4: 22, red5: 30, blue1: 8, blue2: 10, type: 2),
            StatisModel(issue: 20050, red1: 3,  red2: 14, red3: 16, red4: 22, red5: 34, blue1: 2, blue2: 6, type: 3),
            StatisModel(issue: 20051, red1: 2,  red2: 7,  red3: 9,  red4: 19, red5: 33, blue1: 1, blue2: 7, type: 1),
            StatisModel(issue: 20052, red1: 9,  red2: 11, red3: 26, red4: 28, red5: 35, blue1: 6, blue2: 7, type: 3),
            StatisModel(issue: 20053, red1: 2,  red2: 15, red3: 18, red4: 21, red5: 27, blue1: 3, blue2: 6, type: 2),
            StatisModel(issue: 20054, red1: 11, red2: 14, red3: 15, red4: 19, red5: 20, blue1: 3, blue2: 7, type: 2),
            StatisModel(issue: 20055, red1: 3,  red2: 4,  red3: 12, red4: 18, red5: 34, blue1: 10, blue2: 12, type: 3),
            StatisModel(issue: 20056, red1: 3,  red2: 11, red3: 25, red4: 29, red5: 34, blue1: 3, blue2: 6, type: 3),
            StatisModel(issue: 20057, red1: 17, red2: 20, red3: 21, red4: 22, red5: 31, blue1: 2, blue2: 8, type: 1),
            StatisModel(issue: 20058, red1: 1,  red2: 15, red3: 19, red4: 26, red5: 27, blue1: 5, blue2: 10, type: 1),
            StatisModel(issue: 20059, red1: 1,  red2: 15, red3: 22, red4: 28, red5: 32, blue1: 3, blue2: 11, type: 2),
            StatisModel(issue: 20060, red1: 12, red2: 14, red3: 25, red4: 34, red5: 35, blue1: 3, blue2: 12, type: 1),
            StatisModel(issue: 20061, red1: 7,  red2: 8,  red3: 12, red4: 21, red5: 26, blue1: 1, blue2: 6, type: 1),
            StatisModel(issue: 20062, red1: 1,  red2: 5,  red3: 14, red4: 23, red5: 31, blue1: 2, blue2: 7, type: 1),
            StatisModel(issue: 20063, red1: 11, red2: 18, red3: 20, red4: 21, red5: 33, blue1: 6, blue2: 7, type: 3),
            StatisModel(issue: 20064, red1: 5,  red2: 10, red3: 23, red4: 34, red5: 35, blue1: 1, blue2: 11, type: 1),
            StatisModel(issue: 20065, red1: 13, red2: 15, red3: 26, red4: 32, red5: 33, blue1: 5, blue2: 7, type: 1),
            StatisModel(issue: 20066, red1: 6,  red2: 14, red3: 21, red4: 34, red5: 35, blue1: 3, blue2: 10, type: 2),
            StatisModel(issue: 20067, red1: 1,  red2: 8,  red3: 14, red4: 16, red5: 28, blue1: 4, blue2: 10, type: 3),
            StatisModel(issue: 20068, red1: 15, red2: 20, red3: 23, red4: 26, red5: 33, blue1: 2, blue2: 8, type: 3),
            StatisModel(issue: 20069, red1: 5,  red2: 7,  red3: 26, red4: 30, red5: 31, blue1: 7, blue2: 10, type: 2),
            StatisModel(issue: 20070, red1: 1,  red2: 22, red3: 30, red4: 31, red5: 32, blue1: 4, blue2: 12, type: 1),
            StatisModel(issue: 20071, red1: 1,  red2: 12, red3: 16, red4: 28, red5: 33, blue1: 3, blue2: 12, type: 2),
            StatisModel(issue: 20072, red1: 11, red2: 15, red3: 18, red4: 20, red5: 27, blue1: 5, blue2: 6, type: 2),
            StatisModel(issue: 20073, red1: 4,  red2: 10, red3: 12, red4: 23, red5: 27, blue1: 8, blue2: 9, type: 2),
            StatisModel(issue: 20074, red1: 3,  red2: 9,  red3: 10, red4: 12, red5: 21, blue1: 4, blue2: 11, type: 1),
            StatisModel(issue: 20075, red1: 2,  red2: 9,  red3: 10, red4: 21, red5: 35, blue1: 1, blue2: 7, type: 2),
            StatisModel(issue: 20076, red1: 1,  red2: 8,  red3: 18, red4: 28, red5: 30, blue1: 10, blue2: 12, type: 3),
            StatisModel(issue: 20077, red1: 17, red2: 23, red3: 28, red4: 29, red5: 32, blue1: 1, blue2: 3, type: 3),
            StatisModel(issue: 20078, red1: 14, red2: 18, red3: 20, red4: 28, red5: 34, blue1: 10, blue2: 11, type: 3),
            StatisModel(issue: 20079, red1: 4,  red2: 16, red3: 24, red4: 29, red5: 35, blue1: 2, blue2: 12, type: 3),
            StatisModel(issue: 20080, red1: 3,  red2: 6,  red3: 22, red4: 24, red5: 25, blue1: 9, blue2: 10, type: 1),
            StatisModel(issue: 20081, red1: 1,  red2: 13, red3: 15, red4: 32, red5: 35, blue1: 8, blue2: 10, type: 3),
            StatisModel(issue: 20082, red1: 2,  red2: 11, red3: 12, red4: 21, red5: 34, blue1: 4, blue2: 8, type: 1),
            StatisModel(issue: 20083, red1: 1,  red2: 2,  red3: 17, red4: 32, red5: 34, blue1: 4, blue2: 9, type: 1),
            StatisModel(issue: 20084, red1: 2,  red2: 10, red3: 20, red4: 24, red5: 31, blue1: 6, blue2: 12, type: 2),
            StatisModel(issue: 20085, red1: 3,  red2: 4,  red3: 11, red4: 15, red5: 28, blue1: 2, blue2: 3, type: 3),
            StatisModel(issue: 20086, red1: 8,  red2: 11, red3: 15, red4: 20, red5: 28, blue1: 4, blue2: 10, type: 1),
            StatisModel(issue: 20087, red1: 1,  red2: 4,  red3: 20, red4: 23, red5: 29, blue1: 4, blue2: 8, type: 3),
            StatisModel(issue: 20088, red1: 2,  red2: 7,  red3: 23, red4: 26, red5: 35, blue1: 1, blue2: 12, type: 3),
            StatisModel(issue: 20089, red1: 13, red2: 16, red3: 20, red4: 22, red5: 27, blue1: 1, blue2: 2, type: 1),
            StatisModel(issue: 20090, red1: 5,  red2: 6,  red3: 27, red4: 28, red5: 29, blue1: 11, blue2: 12, type: 3),
            StatisModel(issue: 20091, red1: 12, red2: 16, red3: 20, red4: 23, red5: 31, blue1: 5, blue2: 12, type: 3),
            StatisModel(issue: 20092, red1: 8,  red2: 11, red3: 17, red4: 31, red5: 35, blue1: 7, blue2: 11, type: 2),
            StatisModel(issue: 20093, red1: 6,  red2: 14, red3: 25, red4: 27, red5: 28, blue1: 4, blue2: 11, type: 2),
            StatisModel(issue: 20094, red1: 4,  red2: 6,  red3: 7,  red4: 8,  red5: 16, blue1: 2, blue2: 8, type: 3),
            StatisModel(issue: 20095, red1: 2,  red2: 18, red3: 25, red4: 26, red5: 32, blue1: 2, blue2: 7, type: 3),
            StatisModel(issue: 20096, red1: 7,  red2: 8,  red3: 10, red4: 25, red5: 28, blue1: 3, blue2: 11, type: 1),
            StatisModel(issue: 20097, red1: 5,  red2: 25, red3: 27, red4: 30, red5: 34, blue1: 6, blue2: 12, type: 1),
            StatisModel(issue: 20098, red1: 4,  red2: 9,  red3: 15, red4: 24, red5: 35, blue1: 4, blue2: 10, type: 2),
            StatisModel(issue: 20099, red1: 2,  red2: 3,  red3: 11, red4: 15, red5: 27, blue1: 4, blue2: 12, type: 3),
            StatisModel(issue: 20100, red1: 4,  red2: 5,  red3: 8,  red4: 22, red5: 33, blue1: 7, blue2: 10, type: 1),
            StatisModel(issue: 20101, red1: 3,  red2: 4,  red3: 5,  red4: 9,  red5: 34, blue1: 7, blue2: 9, type: 3),
            StatisModel(issue: 20102, red1: 7,  red2: 11, red3: 18, red4: 20, red5: 29, blue1: 9, blue2: 12, type: 1),
            StatisModel(issue: 20103, red1: 7,  red2: 12, red3: 13, red4: 19, red5: 23, blue1: 2, blue2: 8, type: 2),
            StatisModel(issue: 20104, red1: 3,  red2: 12, red3: 23, red4: 26, red5: 30, blue1: 4, blue2: 7, type: 1),
            StatisModel(issue: 20105, red1: 3,  red2: 8,  red3: 12, red4: 13, red5: 22, blue1: 4, blue2: 12, type: 1),
            StatisModel(issue: 20106, red1: 2,  red2: 3,  red3: 11, red4: 14, red5: 27, blue1: 4, blue2: 10, type: 3),
            StatisModel(issue: 20107, red1: 1,  red2: 4,  red3: 13, red4: 17, red5: 28, blue1: 3, blue2: 7, type: 3),
            StatisModel(issue: 20108, red1: 2,  red2: 3,  red3: 6,  red4: 7,  red5: 33, blue1: 8, blue2: 9, type: 1),
            StatisModel(issue: 20109, red1: 2,  red2: 20, red3: 21, red4: 23, red5: 32, blue1: 6, blue2: 12, type: 2),
            StatisModel(issue: 20110, red1: 11, red2: 16, red3: 20, red4: 21, red5: 28, blue1: 5, blue2: 11, type: 3),
            StatisModel(issue: 20111, red1: 5,  red2: 7,  red3: 9,  red4: 20, red5: 28, blue1: 2, blue2: 7, type: 3),
            StatisModel(issue: 20112, red1: 8,  red2: 11, red3: 13, red4: 30, red5: 32, blue1: 2, blue2: 6, type: 1),
            StatisModel(issue: 20113, red1: 6,  red2: 14, red3: 18, red4: 28, red5: 33, blue1: 2, blue2: 5, type: 2),
            StatisModel(issue: 20114, red1: 10, red2: 12, red3: 21, red4: 24, red5: 30, blue1: 3, blue2: 7, type: 2),
            StatisModel(issue: 20115, red1: 1,  red2: 9,  red3: 18, red4: 19, red5: 23, blue1: 1, blue2: 9, type: 2),
            StatisModel(issue: 20116, red1: 8,  red2: 10, red3: 12, red4: 16, red5: 22, blue1: 3, blue2: 9, type: 3),
            StatisModel(issue: 20117, red1: 7,  red2: 19, red3: 20, red4: 23, red5: 24, blue1: 5, blue2: 10, type: 3),
            StatisModel(issue: 20118, red1: 1,  red2: 9,  red3: 15, red4: 30, red5: 33, blue1: 4, blue2: 9, type: 2),
            StatisModel(issue: 20119, red1: 14, red2: 22, red3: 24, red4: 28, red5: 32, blue1: 7, blue2: 8, type: 2),
            StatisModel(issue: 20120, red1: 5,  red2: 25, red3: 26, red4: 30, red5: 35, blue1: 4, blue2: 10, type: 1),
            StatisModel(issue: 20121, red1: 9,  red2: 17, red3: 27, red4: 28, red5: 35, blue1: 3, blue2: 8, type: 3),
            StatisModel(issue: 20122, red1: 8,  red2: 19, red3: 29, red4: 34, red5: 35, blue1: 6, blue2: 11, type: 1),
            StatisModel(issue: 20123, red1: 1,  red2: 7,  red3: 11, red4: 15, red5: 21, blue1: 4, blue2: 11, type: 2),
            StatisModel(issue: 20124, red1: 11, red2: 15, red3: 24, red4: 26, red5: 35, blue1: 4, blue2: 5, type: 2),
            StatisModel(issue: 20125, red1: 1,  red2: 2,  red3: 3,  red4: 8,  red5: 22, blue1: 1, blue2: 4, type: 1),
            StatisModel(issue: 20126, red1: 1,  red2: 4,  red3: 9,  red4: 22, red5: 28, blue1: 4, blue2: 12, type: 3),
            StatisModel(issue: 20127, red1: 1,  red2: 4,  red3: 17, red4: 18, red5: 26, blue1: 3, blue2: 10, type: 2),
            StatisModel(issue: 20128, red1: 9,  red2: 12, red3: 13, red4: 26, red5: 33, blue1: 4, blue2: 10, type: 2),
            StatisModel(issue: 20129, red1: 10, red2: 22, red3: 27, red4: 33, red5: 34, blue1: 1, blue2: 11, type: 3),
            StatisModel(issue: 20130, red1: 16, red2: 17, red3: 23, red4: 26, red5: 32, blue1: 2, blue2: 12, type: 2),
            StatisModel(issue: 20131, red1: 8,  red2: 25, red3: 27, red4: 29, red5: 35, blue1: 2, blue2: 3, type: 3),
            StatisModel(issue: 20132, red1: 3,  red2: 15, red3: 16, red4: 17, red5: 21, blue1: 7, blue2: 10, type: 1),
            StatisModel(issue: 20133, red1: 11, red2: 24, red3: 26, red4: 33, red5: 35, blue1: 8, blue2: 9, type: 1),
            StatisModel(issue: 20134, red1: 8,  red2: 11, red3: 13, red4: 22, red5: 25, blue1: 4, blue2: 7, type: 2),
            StatisModel(issue: 21001, red1: 2,  red2: 6,  red3: 12, red4: 19, red5: 33, blue1: 8, blue2: 9, type: 2),
            StatisModel(issue: 21002, red1: 2,  red2: 16, red3: 26, red4: 31, red5: 34, blue1: 9, blue2: 11, type: 1),
            StatisModel(issue: 21003, red1: 7,  red2: 21, red3: 28, red4: 31, red5: 35, blue1: 4, blue2: 10, type: 1),
            StatisModel(issue: 21004, red1: 5,  red2: 10, red3: 17, red4: 23, red5: 28, blue1: 2, blue2: 8, type: 3),
            StatisModel(issue: 21005, red1: 3,  red2: 7,  red3: 10, red4: 12, red5: 35, blue1: 3, blue2: 4, type: 3),
        ]
        
        return values
    }()
}

































extension StatisModel{
    public static func dataFor2019() -> [StatisModel]{
        return [
            
            StatisModel(issue: 19102, red1: 5, red2: 10, red3: 15, red4: 19, red5: 31, blue1: 3, blue2: 6, type: 3)
            //StatisModel(issue: <#T##Int#>, red1: <#T##Int#>, red2: <#T##Int#>, red3: <#T##Int#>, red4: <#T##Int#>, red5: <#T##Int#>, blue1: <#T##Int#>, blue2: <#T##Int#>, type: <#T##Int#>)
            //StatisModel(issue: <#T##Int#>, red1: <#T##Int#>, red2: <#T##Int#>, red3: <#T##Int#>, red4: <#T##Int#>, red5: <#T##Int#>, blue1: <#T##Int#>, blue2: <#T##Int#>, type: <#T##Int#>)
            //StatisModel(issue: <#T##Int#>, red1: <#T##Int#>, red2: <#T##Int#>, red3: <#T##Int#>, red4: <#T##Int#>, red5: <#T##Int#>, blue1: <#T##Int#>, blue2: <#T##Int#>, type: <#T##Int#>)
            
            
            
        ]
    }
}























