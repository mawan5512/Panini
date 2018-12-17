/*
 * This file is part of the Panini project at Iowa State University.
 *
 * The contents of this file are subject to the Mozilla Public License
 * Version 1.1 (the "License"); you may not use this file except in
 * compliance with the License. You may obtain a copy of the License at
 * http://www.mozilla.org/MPL/.
 *
 * Software distributed under the License is distributed on an "AS IS" basis,
 * WITHOUT WARRANTY OF ANY KIND, either express or implied. See the License
 * for the specific language governing rights and limitations under the
 * License.
 * 
 * For more details and the latest version of this code please see
 * http://paninij.org
 * 
 * Contributor(s): Hridesh Rajan
 */

library Types {

	class StringC {
		String v;
		public StringC(String v) { this.v = v; }
		public String value() { return v; }
	}

	class Strings {
		String[] v;
		public Strings(String[] v) { this.v = v; }
		public String[] value() { return v; }
	}

	class IntegerC {
		int v;
		public IntegerC(int v) { this.v = v; }
		public int value() { return v; }
	}

	class CharC {
		char v;
		public CharC(char v) { this.v = v; }
		public char value() { return v; }
	}

}
