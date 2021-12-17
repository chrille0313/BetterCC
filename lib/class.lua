function class(base)
	local cls = {}
  
	-- Check if this is a subclass and if so, copy over all methods from base
	if base and type(base) == 'table' then
		for i, e in pairs(base) do
    		cls[i] = e
    end
		cls._base = base
	end

  cls.__index = cls
  
  -- Constructor for objects of this class
	local mt = {
		__call = function(self, ...)
			local obj = {}
			setmetatable(obj, cls)

			if self.__init then  -- Call init function on this class
				self.__init(obj,...)
			elseif base and base.init then  -- Call init function on base class
				base.__init(obj, ...)
			end

			return obj
		end
	}

	setmetatable(cls, mt)
	return cls
end
