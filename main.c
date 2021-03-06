#include <stdio.h>
#include <gtk/gtk.h>

int main(int argc, char *argv[])
{
	gtk_init(&argc, &argv);
	GtkWidget *hello = gtk_message_dialog_new(NULL, GTK_DIALOG_MODAL, GTK_MESSAGE_INFO, GTK_BUTTONS_OK, "FUCK YOU!");
	gtk_message_dialog_format_secondary_text(GTK_MESSAGE_DIALOG(hello), "This is a gtk C application!\n\nbtw VSCode is retarded");
	gtk_dialog_run(GTK_DIALOG(hello));
	return 0;
}