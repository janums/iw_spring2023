/* +++Date last modified: 05-Jul-1997 */

/*
**        A Pratt-Boyer-Moore string search, written by Jerry Coffin
**  sometime or other in 1991.  Removed from original program, and
**  (incorrectly) rewritten for separate, generic use in early 1992.
**  Corrected with help from Thad Smith, late March and early
**  April 1992...hopefully it's correct this time. Revised by Bob Stout.
**
**  This is hereby placed in the Public Domain by its author.
**
**  10/21/93 rdg  Fixed bug found by Jeff Dunlop
*/

#include <stddef.h>
#include <string.h>
#include <limits.h>

static size_t table[UCHAR_MAX + 1]; // UCHAR_MAX = 255
static size_t len;
static char *findme;

/*
**  Call this with the string to locate to initialize the table
*/

void init_search(const char *string)
{
	size_t i;

	len = strlen(string);
	for (i = 0; i <= UCHAR_MAX; i++) /* rdg 10/93 */
		table[i] = len;
	for (i = 0; i < len; i++)
		// see https://stackoverflow.com/questions/23908785/how-to-subtract-integers-from-characters-in-c
		table[(unsigned char)string[i]] = len - i - 1;
	findme = (char *)string;
}

/*
**  Call this with a buffer to search
*/

char *strsearch(const char *string)
{
	register size_t shift;
	register size_t pos = len - 1;
	char *here;
	size_t limit = strlen(string);

	/*
	one basic idea:

	can you split this while loop into (limit - pos) number of processors?
	this eliminates the outer while loop --> each processor handles
	one value of pos, which is bounded by [len-1, limit]
	then, at this point, you can immediately check:

	if (shift = table[(unsigned char)string[pos]]) > 0 && [compare strings to verify]):
			return (here)
	else:
			return null

	Note: this approach is O(1) if you can parallelize across n = (limit-pos)
	processors. Otherwise, if you have m processors, it will take O(n/m) time
	^^ this actually assumes strcmp is constant, which is incorrect
	this approach, in the worst case, actually takes O(len(findme)*len(string))
	time, even if you can parallelize across multiple processors. can strcmp()
	itself be split up more?

	*/
	while (pos < limit)
	{
		while (pos < limit && (shift = table[(unsigned char)string[pos]]) > 0)
		{
			pos += shift;
		}

		// can you put this whole if statement on another processor? like the linked-list approach
		/*
		another idea:

		(refer to the linked-list traversal example in the DSWP paper)

		can you increment pos++ and continue working on one processor while doing these checks
		on another processor? strncmp takes O(n) time (i think). If the comparison retunrns true,
		then can the secondary processor use a PRODUCE call to somehow interrupt the work being
		done on the other processor?

		Note: this approach is likely most performant when we have two processors
		*/
		if (0 == shift)
		{
			if (0 == strncmp(findme, here = (char *)&string[pos - len + 1], len))
			{
				return (here);
			}
			else
				pos++;
		}
	}
	return NULL;
}

#include <stdio.h>

main()
{
	char *here;
	char *find_strings[] = {"abb", "you", "not", "it", "dad", "yoo", "hoo",
							"oo", "oh", "xx", "xx", "x", "x", "field", "new", "row",
							"regime", "boom", "that", "impact", "and", "zoom", "texture",
							"magnet", "doom", "loom", "freq", "current", "phase",
							"images",
							"appears", "phase", "conductor", "wavez",
							"normal", "free", "termed",
							"provide", "for", "and", "struct", "about", "have",
							"proper",
							"involve",
							"describedly",
							"thats",
							"spaces",
							"circumstance",
							"the",
							"member",
							"such",
							"guide",
							"regard",
							"officers",
							"implement",
							"principalities",
							NULL};
	char *search_strings[] = {"cabbie", "your", "It isn't here",
							  "But it is here", "hodad", "yoohoo", "yoohoo",
							  "yoohoo", "yoohoo", "yoohoo", "xx", "x", ".",
							  "In recent years, the field of photonic ",
							  "crystals has found new",
							  "applications in the RF and microwave",
							  "regime. A new type of metallic",
							  "electromagnetic crystal has been",
							  "developed that is having a",
							  "significant impact on the field of",
							  "antennas. It consists of a",
							  "conductive surface, covered with a",
							  "special texture which alters its",
							  "electromagnetic properties. Made of solid",
							  "metal, the structure",
							  "conducts DC currents, but over a",
							  "particular frequency range it does",
							  "not conduct AC currents. It does not",
							  "reverse the phase of reflected",
							  "waves, and the effective image currents",
							  "appear in-phase, rather than",
							  "out-of-phase as they are on normal",
							  "conductors. Furthermore, surface",
							  "waves do not propagate, and instead",
							  "radiate efficiently into free",
							  "space. This new material, termed a",
							  "high-impedance surface, provides",
							  "a useful new ground plane for novel",
							  "low-profile antennas and other",
							  "electromagnetic structures.",
							  "The recent protests about the Michigamua",
							  "student organization have raised an",
							  "important question as to the proper nature",
							  "and scope of University involvement",
							  "with student organizations. Accordingly",
							  "the panel described in my Statement of",
							  "February 25, 2000 that is considering the",
							  "question of privileged space also will",
							  "consider under what circumstances and in",
							  "what ways the University, its",
							  "administrators and faculty members should",
							  "be associated with such organizations",
							  "and it will recommend guiding principles",
							  "in this regard. The University's",
							  "Executive Officers and I will then decide",
							  "whether and how to implement such",
							  "principles."};
	int i;

	for (i = 0; find_strings[i]; i++)
	{
		init_search(find_strings[i]);
		here = strsearch(search_strings[i]);
		printf("\"%s\" is%s in \"%s\"", find_strings[i],
			   here ? "" : " not", search_strings[i]);
		if (here)
			printf(" [\"%s\"]", here);
		putchar('\n');
	}

	return 0;
}
