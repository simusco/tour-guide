package com.moma.framework.extra.taobao.api.internal.util.json;

public class StdoutStreamErrorListener extends BufferErrorListener {
    
    public void end() {
        System.out.print(buffer.toString());
    }
}
