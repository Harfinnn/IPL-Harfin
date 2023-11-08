package CleanCode;

public class FitNesseExpediter implements ResposeSender {
    private Socket socket;
    private InputStream input;
    private OutputStream output;
    private Request request;
    private Response response;
    private FitNesseContext context;
    protected long requestParsingTimeLimit;
    private long requestProgress;
    private long 
    requestParsingDeadLine;
    private boolean hasError;

}
