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
	if ( self.delegate != nil && [self.delegate respondsToSelector: @selector(windowShouldClose:)]) {
	  if ( [self.delegate windowShouldClose:self] ) {
	    if ([self.delegate respondsToSelector: @selector(windowWillClose:)]) {
	      [self.delegate windowWillClose:self];
	    }
	    gtk_window_close (GTK_WINDOW (self.widget));
	  }
	}
	return self;
}

- (id)minimize {
	if ( self.delegate != nil && [self.delegate respondsToSelector: @selector(windowShouldMinimize:)]) {
	  if ( [self.delegate windowShouldMinimize:self] ) {
	    if ([self.delegate respondsToSelector: @selector(windowWillMinimize:)]) {
	      [self.delegate windowWillMinimize:self];
	    }
		gtk_window_iconify (GTK_WINDOW (self.widget));
	  }
	}
	return self;
}

- (id)unminimize {
	gtk_window_deiconify (GTK_WINDOW (self.widget));
	return self;
}

- (id)maximize {
	if ( self.delegate != nil && [self.delegate respondsToSelector: @selector(windowShouldMaximize:)]) {
	  if ( [self.delegate windowShouldMaximize:self] ) {
	    if ([self.delegate respondsToSelector: @selector(windowWillMaximize:)]) {
	      [self.delegate windowWillMaximize:self];
	    }
		gtk_window_maximize (GTK_WINDOW (self.widget));
	  }
	}
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
