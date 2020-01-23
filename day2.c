#include "thisPlanet.h"

main() {
	planet *earth = thisPlanet;
	while (earth->getResponse() != E_DONE) {
		earth->create(E_CREATURES);
		earth->generate(E_EVENTS);
		earth->refresh();
	}
	return 0;
}
