package com.eogame.utils;

public class EOThread extends Thread {

	private boolean isDestory = false;

	private Runnable runnable;

	public EOThread() {
		super();
	}

	public EOThread(Runnable runnable) {
		this.runnable = runnable;
	}

	@Override
	public void run() {
		runnable.run();
	}

	public void safeDestory() {
		isDestory = true;
	}

	public boolean isDestory() {
		return isDestory;
	}

}
