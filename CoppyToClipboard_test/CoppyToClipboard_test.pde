import java.awt.*;
import java.awt.event.*;
import java.awt.datatransfer.*;
import javax.swing.*;
import java.io.*;

String copy = "Dansk, Idehistori opgave er noget bullshit";

StringSelection data = new StringSelection(copy);

Clipboard clipboard = Toolkit.getDefaultToolkit().getSystemClipboard();

clipboard.setContents(data, data);

print("done");
