package com.eogame.model;

import java.io.Serializable;

/**
 * 基础实体类
 * @author Malone
 * @version 1.0
 */
public abstract class EOBaseObject implements Serializable{
	
	private static final long serialVersionUID = 1L;

	public abstract String toString();

	public abstract boolean equals(Object paramObject);

	public abstract int hashCode();
}
