//
//  BaseStore.swift
//  Accelerator
//
//  Created by harton on 2020/8/7.
//  Copyright © 2020 harton. All rights reserved.
//

import Foundation
import MMKV



extension MMKV{
    public enum MMKVKey : String {
        
        case randommaxminLottery = "randommaxminLottery"
    }
    
    
    
    public static let string : String = ""
    
    public static let int : Int = 0
    
    
}


// MARK: actions
extension MMKV{
    public class func _set(string value : String?,key : MMKVKey){
        guard let value = value else{
            getDefaultMMKV().removeValue(forKey: key.rawValue)
            return
        }
        getDefaultMMKV().set(value, forKey: key.rawValue)
    }
    
    public class func _get(string key : MMKVKey) -> String?{
        return getDefaultMMKV().string(forKey: key.rawValue)
    }
    
    
    public class func _set(date value : Date,key : MMKVKey){
        getDefaultMMKV().set(value, forKey: key.rawValue)
    }
    
    public class func _get(date key : MMKVKey) -> Date?{
        return getDefaultMMKV().date(forKey: key.rawValue)
    }
    
    
    public class func _set(double value : Double,key : MMKVKey){
        getDefaultMMKV().set(value, forKey: key.rawValue)
    }
    
    public class func _get(double key : MMKVKey) -> Double{
        return getDefaultMMKV().double(forKey: key.rawValue)
    }
    
    
    public class func _set(bool value : Bool,key : MMKVKey){
        getDefaultMMKV().set(value, forKey: key.rawValue)
    }
    
    public class func _get(bool key : MMKVKey) -> Bool{
        guard MMKV._contain(key) else{
            return false 
        }
        return getDefaultMMKV().bool(forKey: key.rawValue)
    }
    
    public class func _set(int32 value : Int32,key : MMKVKey){
        getDefaultMMKV().set(value, forKey: key.rawValue)
    }
    
    public class func _get(int32 key : MMKVKey) -> Int32{
        return getDefaultMMKV().int32(forKey: key.rawValue)
    }
    
    public class func _set(data value : Data,key : MMKVKey){
        getDefaultMMKV().set(value, forKey: key.rawValue)
    }
    
    public class func _get(data key : MMKVKey) -> Data?{
        return getDefaultMMKV().data(forKey: key.rawValue)
    }
    
    
    public class func _set<T>(array value : [T],key : MMKVKey){
        if value.isEmpty{
            getDefaultMMKV().set(nil, forKey: key.rawValue)
            return
        }
        let data = NSKeyedArchiver.archivedData(withRootObject: value)
        getDefaultMMKV().set(data, forKey: key.rawValue)
    }
    
    public class func _get<T>(array key : MMKVKey,type : T) -> [T]?{
        guard let data = getDefaultMMKV().data(forKey: key.rawValue) else{
            return nil
        }
        
        guard let arr = NSKeyedUnarchiver.unarchiveObject(with: data) as? [T] else{
            return nil
        }
        return arr
    }
    
    
    public class func _set(dict value : [String : Any],key : MMKVKey){
        let data = NSKeyedArchiver.archivedData(withRootObject: value)
        _set(data: data, key: key)
    }
    
    public class func _get(dict key : MMKVKey) -> [String : Any]?{
        guard let data = _get(data: key) else {
            return nil
        }
        guard let dict = NSKeyedUnarchiver.unarchiveObject(with: data) as? [String : Any] else {
            return nil
        }
        return dict
    }
    
    
    public class func _contain(_ key : MMKVKey) -> Bool{
        return getDefaultMMKV().contains(key: key.rawValue)
    }
    
    public class func _remove(_ key : MMKVKey){
        getDefaultMMKV().removeValue(forKey: key.rawValue)
    }
}


func getDefaultMMKV() -> MMKV{
    guard let mmkv = MMKV.default() else {
        return MMKV()
    }
    return mmkv
}


