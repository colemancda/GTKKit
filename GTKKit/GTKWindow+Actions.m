#import <ObjFW/ObjFW.h>
#import <gtk/gtk.h>
#import <GTKKit/GTKContainer.h>
#import <GTKKit/GTKWindow.h>
#import <GTKKit/GTKWindow+Actions.h>

@implementation GTKWindow (Actions)

- (id)present {
	gtk_window_present(GTK_WINDOW (self.widget));
	return self;
}

- (bool)activateDefaultWidget {
	return gtk_window_activate_default (GTK_WINDOW (self.widget));
}

- (id)close {
	gtk_window_close (GTK_WINDOW (self.widget));
	return self;
}

- (id)minimize {
	gtk_window_iconify (GTK_WINDOW (self.widget));
	return self;
}

- (id)unminimize {
	gtk_window_deiconify (GTK_WINDOW (self.widget));
	return self;
}

- (id)maximize {
	gtk_window_maximize (GTK_WINDOW (self.widget));
	return self;
}

- (id)unmaximize {
	gtk_window_maximize (GTK_WINDOW (self.widget));
	return self;
}

- (id)fullscreen {
	gtk_window_fullscreen (GTK_WINDOW (self.widget));
	return self;
}

- (id)unfullscreen {
	gtk_window_unfullscreen (GTK_WINDOW (self.widget));
	return self;
}

@end
