package com.moma.framework.extra.taobao.api.internal.util.json;

public class ExceptionErrorListener extends BufferErrorListener {
    
    public void error(String type, int col) {
        super.error(type, col);
        throw new IllegalArgumentException(buffer.toString());
    }
}
