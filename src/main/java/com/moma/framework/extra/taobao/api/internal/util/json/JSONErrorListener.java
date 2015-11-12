package com.moma.framework.extra.taobao.api.internal.util.json;

public interface JSONErrorListener {
    void start(String text);
    void error(String message, int column);
    void end();
}
