<?xml version="1.0" encoding="UTF-8"?>
<xmi:XMI xmi:version="2.0" xmlns:xmi="http://www.omg.org/XMI" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:exercise="platform:/plugin/no.hal.learning.exercise.model/model/exercise.ecore" xmlns:jdt="platform:/plugin/no.hal.learning.exercise.jdt/model/jdt-exercise.ecore" xmlns:junit="platform:/plugin/no.hal.learning.exercise.junit/model/junit-exercise.ecore" xmlns:workbench="platform:/plugin/no.hal.learning.exercise.workbench/model/workbench-exercise.ecore">
  <exercise:Exercise>
    <parts xsi:type="exercise:ExercisePart" title="Java classes">
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Edit source code for Java classes."/>
        <a xsi:type="jdt:JdtSourceEditAnswer" resourcePath="/ovinger/src/*" className="*"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Launch Java classes."/>
        <a xsi:type="jdt:JdtLaunchAnswer" className="*"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Run JUnit tests."/>
        <a xsi:type="junit:JunitTestAnswer" testRunName="*"/>
      </tasks>
    </parts>
    <parts xsi:type="exercise:ExercisePart" title="Tool usage">
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Handle debug events."/>
        <a xsi:type="workbench:DebugEventAnswer" elementId="*" action="*.*"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Use debug commands"/>
        <a xsi:type="workbench:CommandExecutionAnswer" elementId="*" action="executeSuccess"/>
      </tasks>
      <tasks xsi:type="exercise:Task">
        <q xsi:type="exercise:StringQuestion" question="Use editors and views"/>
        <a xsi:type="workbench:PartTaskAnswer" elementId="*" action="*"/>
      </tasks>
    </parts>
  </exercise:Exercise>
  <exercise:ExerciseProposals exercise="/0">
    <proposals exercisePart="/0/@parts.0">
      <proposals xsi:type="jdt:JdtSourceEditProposal" question="/0/@parts.0/@tasks.0/@q" answer="/0/@parts.0/@tasks.0/@a">
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1519741922444" resourcePath="/ovinger/src/debugging/StringMergingIteratorProgram.java" sizeMeasure="40" className="debugging.StringMergingIteratorProgram">
          <edit xsi:type="exercise:StringEdit" storedString="package debugging;&#xA;&#xA;import java.util.ArrayList;&#xA;import java.util.Iterator;&#xA;import java.util.List;&#xA;&#xA;import org.eclipse.xtext.xbase.lib.CollectionLiterals;&#xA;&#xA;public class StringMergingIteratorProgram {&#xA;&#xA;&#x9;public static void main(String[] args) throws Exception {&#xA;&#xA;&#x9;&#x9;Iterator&lt;String> one = CollectionLiterals.&lt;String>newArrayList(&quot;a&quot;, &quot;b&quot;).iterator();&#xA;&#x9;&#x9;Iterator&lt;String> two = CollectionLiterals.&lt;String>newArrayList(&quot;c&quot;, &quot;d&quot;, &quot;e&quot;).iterator();&#xA;&#x9;&#x9; &#xA;&#x9;&#x9;StringMergingIterator mergeIterator = new StringMergingIterator(one, two); &#xA;&#x9;&#x9;&#xA;&#x9;&#x9;List&lt;String> values = new ArrayList&lt;String>();&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;while(mergeIterator.hasNext()){&#xA;&#x9;&#x9;&#x9;values.add(mergeIterator.next());&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;List&lt;String> expectedOutput = CollectionLiterals.&lt;String>newArrayList(&quot;a&quot;, &quot;c&quot;, &quot;b&quot;, &quot;d&quot;, &quot;e&quot;);&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;if(values.size() != expectedOutput.size()){&#xA;&#x9;&#x9;&#x9;throw new Exception(&quot;The merged output did not contain the expected number of values. Try using the Eclipse debugger to see the difference between the lists.&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;for(int i = 0; i &lt; expectedOutput.size(); i++){&#xA;&#x9;&#x9;&#x9;if(! values.get(i).equals(expectedOutput.get(i))){&#xA;&#x9;&#x9;&#x9;&#x9;throw new Exception(&quot;The iterator did not correctly merge the output. Try using the Eclipse debugger to see the difference between the lists.&quot;);&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;System.out.println(&quot;Success! StringMergingIterator correctly merged the output of the two lists.&quot;);&#xA;&#x9;&#x9;&#xA;&#x9;}&#xA;&#xA;}&#xA;"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1519742018300" resourcePath="/ovinger/src/debugging/StringMergingIteratorProgram.java" sizeMeasure="40" className="debugging.StringMergingIteratorProgram">
          <edit xsi:type="exercise:ReplaceSubstringEdit" edit="/1/@proposals.0/@proposals.0/@attempts.0/@edit" start="1348"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1519742068486" resourcePath="/ovinger/src/debugging/StringMergingIteratorProgram.java" sizeMeasure="40" className="debugging.StringMergingIteratorProgram">
          <edit xsi:type="exercise:ReplaceSubstringEdit" edit="/1/@proposals.0/@proposals.0/@attempts.1/@edit" start="1348"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1519742137140" resourcePath="/ovinger/src/debugging/StringMergingIteratorProgram.java" sizeMeasure="40" className="debugging.StringMergingIteratorProgram">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#x9;&#x9;System.out.println(&quot;Hei&quot;);" edit="/1/@proposals.0/@proposals.0/@attempts.2/@edit" start="259" end="-1090"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1519743000718" resourcePath="/ovinger/src/debugging/StringMergingIteratorProgram.java" sizeMeasure="39" className="debugging.StringMergingIteratorProgram">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="I" edit="/1/@proposals.0/@proposals.0/@attempts.3/@edit" start="261" end="-1086"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1519743004821" resourcePath="/ovinger/src/debugging/StringMergingIteratorProgram.java" sizeMeasure="40" className="debugging.StringMergingIteratorProgram">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="&#xA;" edit="/1/@proposals.0/@proposals.0/@attempts.4/@edit" start="261" end="-1089"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1519743633014" resourcePath="/ovinger/src/interfaces/BinaryComputingIterator.java" sizeMeasure="57" className="interfaces.BinaryComputingIterator">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="interfaces;&#xA;&#xA;import java.util.Iterator;&#xA;import java.util.NoSuchElementException;&#xA;import java.util.function.BinaryOperator;&#xA;&#xA;public class BinaryComputingIterator implements Iterator&lt;Double> {&#xA;&#x9;// Instance variables&#xA;&#x9;private Iterator&lt;Double> it1, it2;&#xA;&#x9;private Double default1, default2;&#xA;&#x9;private BinaryOperator&lt;Double> operator;&#xA;&#x9;&#xA;&#x9;&#xA;&#x9;// Constructors&#xA;&#x9;public BinaryComputingIterator(Iterator&lt;Double> it1, Iterator&lt;Double> it2, BinaryOperator&lt;Double> operator) {&#xA;&#x9;&#x9;this.it1 = it1;&#xA;&#x9;&#x9;this.it2 = it2;&#xA;&#x9;&#x9;this.operator = operator;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public BinaryComputingIterator(Iterator&lt;Double> it1, Iterator&lt;Double> it2, Double default1, Double default2, BinaryOperator&lt;Double> operator) {&#xA;&#x9;&#x9;this.it1 = it1;&#xA;&#x9;&#x9;this.it2 = it2;&#xA;&#x9;&#x9;this.default1 = default1;&#xA;&#x9;&#x9;this.default2 = default2;&#xA;&#x9;&#x9;this.operator = operator;&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;// Returns true if either iterator has a next value&#xA;&#x9;@Override&#xA;&#x9;public boolean hasNext() {&#xA;&#x9;&#x9;// If no default value is assigned, &#xA;&#x9;&#x9;// both iterators are required to have a next value&#xA;&#x9;&#x9;if (default2 == null)&#xA;&#x9;&#x9;&#x9;return (it1.hasNext()  &amp;&amp;  it2.hasNext());&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;// If default value is assigned, &#xA;&#x9;&#x9;// only one iterator is required to have a next value&#xA;&#x9;&#x9;return (it1.hasNext()  ||  it2.hasNext());&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;// Performs operation on the next iterator values&#xA;&#x9;@Override&#xA;&#x9;public Double next() throws NoSuchElementException {&#xA;&#x9;&#x9;// Break if iterator is exhausted&#xA;&#x9;&#x9;if (!hasNext())&#xA;&#x9;&#x9;&#x9;throw new NoSuchElementException(&quot;Iterator is exhausted.&quot;);&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;// Set up values for each iterator&#xA;&#x9;&#x9;Double val1 = (it1.hasNext()) ? it1.next() : default1;&#xA;&#x9;&#x9;Double val2 = (it2.hasNext()) ? it2.next() : default2;&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;// Use binary operator to generate return value&#xA;&#x9;&#x9;return operator.apply(val1, val2);&#xA;&#x9;}&#xA;&#x9;" edit="/1/@proposals.0/@proposals.0/@attempts.5/@edit" start="8" end="-4"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1519743774365" resourcePath="/ovinger/src/interfaces/BinaryComputingIterator.java" sizeMeasure="57" errorCount="1" className="interfaces.BinaryComputingIterator">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="(it1.hasNext() || default1 != null)  &amp;&amp;  (it2.hasNext() || default2 != null))&#xA;&#x9;&#x9;&#x9;return true;&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;// If default value is assigned, &#xA;&#x9;&#x9;// only one iterator is required to have a next value&#xA;&#x9;&#x9;" edit="/1/@proposals.0/@proposals.0/@attempts.6/@edit" start="998" end="-491"/>
          <markers xsi:type="jdt:JdtMarkerInfo" lineNumber="31" charStart="917" charEnd="926" severity="2" problemCategory="50" problemType="603979884"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1519743784544" resourcePath="/ovinger/src/interfaces/BinaryComputingIterator.java" sizeMeasure="57" className="interfaces.BinaryComputingIterator">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="return false;" edit="/1/@proposals.0/@proposals.0/@attempts.7/@edit" start="1189" end="-491"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1519743862103" resourcePath="/ovinger/src/interfaces/BinaryComputingIterator.java" sizeMeasure="60" className="interfaces.BinaryComputingIterator">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="if (!it1.hasNext() &amp;&amp; !it2.hasNext())&#xA;&#x9;&#x9;&#x9;return false;&#xA;&#x9;&#x9;" edit="/1/@proposals.0/@proposals.0/@attempts.8/@edit" start="901" end="-795"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1519743955181" resourcePath="/ovinger/src/interfaces/BinaryComputingIterator.java" sizeMeasure="58" className="interfaces.BinaryComputingIterator">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="r" edit="/1/@proposals.0/@proposals.0/@attempts.9/@edit" start="1157" end="-503"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1519743964315" resourcePath="/ovinger/src/debugging/StringMergingIteratorProgram.java" sizeMeasure="40" className="debugging.StringMergingIteratorProgram">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="debugging;&#xA;&#xA;import java.util.ArrayList;&#xA;import java.util.Iterator;&#xA;import java.util.List;&#xA;&#xA;import org.eclipse.xtext.xbase.lib.CollectionLiterals;&#xA;&#xA;public class StringMergingIteratorProgram {&#xA;&#xA;&#x9;public static void main(String[] args) throws Exception {&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;Iterator&lt;String> one = CollectionLiterals.&lt;String>newArrayList(&quot;a&quot;, &quot;b&quot;).iterator();&#xA;&#x9;&#x9;Iterator&lt;String> two = CollectionLiterals.&lt;String>newArrayList(&quot;c&quot;, &quot;d&quot;, &quot;e&quot;).iterator();&#xA;&#x9;&#x9; &#xA;&#x9;&#x9;StringMergingIterator mergeIterator = new StringMergingIterator(one, two); &#xA;&#x9;&#x9;&#xA;&#x9;&#x9;List&lt;String> values = new ArrayList&lt;String>();&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;while(mergeIterator.hasNext()){&#xA;&#x9;&#x9;&#x9;values.add(mergeIterator.next());&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;List&lt;String> expectedOutput = CollectionLiterals.&lt;String>newArrayList(&quot;a&quot;, &quot;c&quot;, &quot;b&quot;, &quot;d&quot;, &quot;e&quot;);&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;if(values.size() != expectedOutput.size()){&#xA;&#x9;&#x9;&#x9;throw new Exception(&quot;The merged output did not contain the expected number of values. Try using the Eclipse debugger to see the difference between the lists.&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;for(int i = 0; i &lt; expectedOutput.size(); i++){&#xA;&#x9;&#x9;&#x9;if(! values.get(i).equals(expectedOutput.get(i))){&#xA;&#x9;&#x9;&#x9;&#x9;throw new Exception(&quot;The iterator did not correctly merge the output. Try using the Eclipse debugger to see the difference between the lists.&quot;);&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;System.out.println(&quot;Success! StringMergingIterator correctly merged the output of the two lists.&quot;);&#xA;&#x9;&#x9;&#xA;&#x9;}&#xA;" edit="/1/@proposals.0/@proposals.0/@attempts.10/@edit" start="8" end="-4"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1519743994916" resourcePath="/ovinger/src/debugging/StringMergingIteratorProgram.java" sizeMeasure="40" className="debugging.StringMergingIteratorProgram">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="System.out.println(&quot;hei&quot;);" edit="/1/@proposals.0/@proposals.0/@attempts.11/@edit" start="261" end="-1090"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1519744101078" resourcePath="/ovinger/src/debugging/StringMergingIteratorProgram.java" sizeMeasure="40" className="debugging.StringMergingIteratorProgram">
          <edit xsi:type="exercise:ReplaceSubstringEdit" edit="/1/@proposals.0/@proposals.0/@attempts.12/@edit" start="1376"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1523367029853" resourcePath="/ovinger/src/inheritance/Train.java" sizeMeasure="53" className="inheritance.Train">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="inheritance;&#xA;&#xA;import java.util.HashSet;&#xA;import java.util.stream.Collectors;&#xA;&#xA;public class Train {&#xA;&#x9;HashSet&lt;TrainCar> trainCars = new HashSet&lt;>();&#xA;&#x9;&#xA;&#x9;&#xA;&#x9;public void addTrainCar(TrainCar trainCar) {&#xA;&#x9;&#x9;trainCars.add(trainCar);&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public boolean contains(TrainCar trainCar) {&#xA;&#x9;&#x9;return trainCars.contains(trainCar); &#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public int getTotalWeight() {&#xA;&#x9;&#x9;return trainCars.stream().mapToInt(TrainCar::getTotalWeight).sum();&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public int getPassengerCount() {&#xA;&#x9;&#x9;return trainCars.stream()&#xA;&#x9;&#x9;&#x9;&#x9;.filter(e -> e instanceof PassengerCar)&#xA;&#x9;&#x9;&#x9;&#x9;.map(e -> (PassengerCar) e)&#xA;&#x9;&#x9;&#x9;&#x9;.mapToInt(PassengerCar::getPassengerCount)&#xA;&#x9;&#x9;&#x9;&#x9;.sum();&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public int getCargoWeight() {&#xA;&#x9;&#x9;return trainCars.stream()&#xA;&#x9;&#x9;&#x9;&#x9;.filter(e -> e instanceof CargoCar)&#xA;&#x9;&#x9;&#x9;&#x9;.map(e -> (CargoCar) e)&#xA;&#x9;&#x9;&#x9;&#x9;.mapToInt(CargoCar::getCargoWeight)&#xA;&#x9;&#x9;&#x9;&#x9;.sum();&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public String toString() {&#xA;&#x9;&#x9;return trainCars.stream()&#xA;&#x9;&#x9;&#x9;&#x9;.map(TrainCar::toString)&#xA;&#x9;&#x9;&#x9;&#x9;.collect(Collectors.joining(&quot;\n&quot;, &quot;TrainCar: \n&quot;, &quot;&quot;));&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public static void main(String[] args) {&#xA;&#x9;&#x9;Train train = new Train();&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;train.addTrainCar(new PassengerCar(1000, 20));&#xA;&#x9;&#x9;train.addTrainCar(new PassengerCar(1200, 30));&#xA;&#x9;&#x9;train.addTrainCar(new CargoCar(1200, 3000));&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;System.out.println(train);&#xA;&#x9;}" edit="/1/@proposals.0/@proposals.0/@attempts.13/@edit" start="8" end="-4"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1523367035633" resourcePath="/ovinger/src/inheritance/Train.java" sizeMeasure="53" className="inheritance.Train">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString=":" edit="/1/@proposals.0/@proposals.0/@attempts.14/@edit" start="948" end="-274"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1523367801245" resourcePath="/ovinger/src/testing/CardTest.java" sizeMeasure="166" className="testing.CardTest">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="testing;&#xA;&#xA;import junit.framework.TestCase;&#xA;&#xA;public class CardTest extends TestCase {&#xA;&#x9;private Card card;&#xA;&#x9;private CardDeck cardDeck;&#xA;&#x9;&#xA;&#x9;/*&#xA;&#x9; * Card&#xA;&#x9; */&#xA;&#x9;public void testCard() {&#xA;&#x9;&#x9;test_card_validConstructor('S', 1);&#xA;&#x9;&#x9;test_card_validConstructor('H', 1);&#xA;&#x9;&#x9;test_card_validConstructor('D', 1);&#xA;&#x9;&#x9;test_card_validConstructor('C', 1);&#xA;&#xA;&#x9;&#x9;test_card_validConstructor('S', 7);&#xA;&#x9;&#x9;test_card_validConstructor('H', 7);&#xA;&#x9;&#x9;test_card_validConstructor('D', 7);&#xA;&#x9;&#x9;test_card_validConstructor('C', 7);&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;test_card_validConstructor('S', 13);&#xA;&#x9;&#x9;test_card_validConstructor('H', 13);&#xA;&#x9;&#x9;test_card_validConstructor('D', 13);&#xA;&#x9;&#x9;test_card_validConstructor('C', 13);&#xA;&#x9;}&#xA;&#xA;&#x9;public void testCardInvalidSuit() {&#xA;&#x9;&#x9;try {&#xA;&#x9;&#x9;&#x9;card = new Card('A', 1);&#xA;&#x9;&#x9;&#x9;fail(&quot;IllegalArgumentException should be thrown after new Card('A', 1).&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;catch (Exception e) {&#xA;&#x9;&#x9;&#x9;assertTrue(&quot;Exception should be of type IllegalArgumentException.&quot;, e instanceof IllegalArgumentException);&#xA;&#x9;&#x9;}&#xA;&#xA;&#x9;&#x9;try {&#xA;&#x9;&#x9;&#x9;card = new Card('\0', 1);&#xA;&#x9;&#x9;&#x9;fail(&quot;IllegalArgumentException should be thrown after new Card('\\0', 1).&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;catch (Exception e) {&#xA;&#x9;&#x9;&#x9;assertTrue(&quot;Exception should be of type IllegalArgumentException.&quot;, e instanceof IllegalArgumentException);&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void testCardInvalidFace() {&#xA;&#x9;&#x9;try {&#xA;&#x9;&#x9;&#x9;card = new Card('S', 0);&#xA;&#x9;&#x9;&#x9;fail(&quot;IllegalArgumentException should be thrown after new Card('S', 0).&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;catch (Exception e) {&#xA;&#x9;&#x9;&#x9;assertTrue(&quot;Exception should be of type IllegalArgumentException.&quot;, e instanceof IllegalArgumentException);&#xA;&#x9;&#x9;}&#xA;&#xA;&#x9;&#x9;try {&#xA;&#x9;&#x9;&#x9;card = new Card('S', 14);&#xA;&#x9;&#x9;&#x9;fail(&quot;IllegalArgumentException should be thrown after new Card('S', 14).&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;catch (Exception e) {&#xA;&#x9;&#x9;&#x9;assertTrue(&quot;Exception should be of type IllegalArgumentException.&quot;, e instanceof IllegalArgumentException);&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void testCardToString() {&#xA;&#x9;&#x9;test_card_toString('S', 1);&#xA;&#x9;&#x9;test_card_toString('H', 1);&#xA;&#x9;&#x9;test_card_toString('D', 1);&#xA;&#x9;&#x9;test_card_toString('C', 1);&#xA;&#xA;&#x9;&#x9;test_card_toString('S', 13);&#xA;&#x9;&#x9;test_card_toString('H', 13);&#xA;&#x9;&#x9;test_card_toString('D', 13);&#xA;&#x9;&#x9;test_card_toString('C', 13);&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;private void test_card_validConstructor(char suit, int face) {&#xA;&#x9;&#x9;card = new Card(suit, face);&#xA;&#x9;&#x9;String call = String.format(&quot;new Card('%s', %s)&quot;, suit, face);&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;String suitMessage = String.format(&quot;getSuit() == '%s' failed after %s.&quot;, suit, call);&#xA;&#x9;&#x9;assertEquals(suitMessage, suit, card.getSuit());&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;String faceMessage = String.format(&quot;getFace() == %s failed after %s.&quot;, face, call);&#xA;&#x9;&#x9;assertEquals(faceMessage, face, card.getFace());&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;private void test_card_toString(char suit, int face) {&#xA;&#x9;&#x9;card = new Card(suit, face);&#xA;&#x9;&#x9;String expected = String.format(&quot;%s%s&quot;, suit, face);&#xA;&#x9;&#x9;String message = String.format(&quot;toString == %s failed after new Card('%s', %s).&quot;, expected, suit, face);&#xA;&#x9;&#x9;assertEquals(message, expected, card.toString());&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;&#xA;&#x9;/*&#xA;&#x9; * CardDeck&#xA;&#x9; */&#xA;&#x9;public void testCardDeck() {  &#xA;&#x9;&#x9;cardDeck = new CardDeck(1);&#xA;&#x9;&#x9;assertTrue(&quot;\&quot;S1\&quot;, \&quot;H1\&quot;, \&quot;D1\&quot;, \&quot;C1\&quot; failed after new CardDeck(1).&quot;, &#xA;&#x9;&#x9;&#x9;&#x9;assertEquals_cardDeck(new String[] {&quot;S1&quot;, &quot;H1&quot;, &quot;D1&quot;, &quot;C1&quot;}));&#xA;&#xA;&#x9;&#x9;cardDeck = new CardDeck(2);&#xA;&#x9;&#x9;assertTrue(&quot;\&quot;S1\&quot;, \&quot;S2\&quot;, \&quot;H1\&quot;, \&quot;H2\&quot;, \&quot;D1\&quot;, \&quot;D2\&quot;, \&quot;C1\&quot;, \&quot;C2\&quot; failed after new CardDeck(2).&quot;, &#xA;&#x9;&#x9;&#x9;&#x9;assertEquals_cardDeck(new String[] {&quot;S1&quot;, &quot;S2&quot;, &quot;H1&quot;, &quot;H2&quot;, &quot;D1&quot;, &quot;D2&quot;, &quot;C1&quot;, &quot;C2&quot;}));&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;cardDeck = new CardDeck(3);&#xA;&#x9;&#x9;assertTrue(&quot;\&quot;S1\&quot;, \&quot;S2\&quot;, \&quot;S3\&quot;, \&quot;H1\&quot;, \&quot;H2\&quot;, \&quot;H3\&quot;, \&quot;D1\&quot;, \&quot;D2\&quot;, \&quot;D3\&quot;, \&quot;C1\&quot;, \&quot;C2\&quot;, \&quot;C3\&quot; failed after new CardDeck(3).&quot;, &#xA;&#x9;&#x9;&#x9;&#x9;assertEquals_cardDeck(new String[] {&quot;S1&quot;, &quot;S2&quot;, &quot;S3&quot;, &quot;H1&quot;, &quot;H2&quot;, &quot;H3&quot;, &quot;D1&quot;, &quot;D2&quot;, &quot;D3&quot;, &quot;C1&quot;, &quot;C2&quot;, &quot;C3&quot;}));&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void testGetCardCount() {&#xA;&#x9;&#x9;cardDeck = new CardDeck(0);&#xA;&#x9;&#x9;assertEquals(0, cardDeck.getCardCount());&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;cardDeck = new CardDeck(1);&#xA;&#x9;&#x9;assertEquals(4, cardDeck.getCardCount());&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;cardDeck = new CardDeck(2);&#xA;&#x9;&#x9;assertEquals(8, cardDeck.getCardCount());&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;cardDeck = new CardDeck(13);&#xA;&#x9;&#x9;assertEquals(52, cardDeck.getCardCount());&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void testGetCard() {&#xA;&#x9;&#x9;cardDeck = new CardDeck(3);&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;card = cardDeck.getCard(1);&#xA;&#x9;&#x9;assertEquals(&quot;S2&quot;, card.getSuit() + Integer.toString(card.getFace()));&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;card = cardDeck.getCard(4);&#xA;&#x9;&#x9;assertEquals(&quot;H2&quot;, card.getSuit() + Integer.toString(card.getFace()));&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;try {&#xA;&#x9;&#x9;&#x9;cardDeck.getCard(12);&#xA;&#x9;&#x9;&#x9;fail(&quot;getCard(12) should throw an IllegalArgumentException for 'new CardDeck(3)'.&quot;);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;catch (Exception e) {&#xA;&#x9;&#x9;&#x9;assertTrue(&quot;Exception should be of type IllegalArgumentException&quot;, e instanceof IllegalArgumentException);&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;public void testShufflePerfectly() {&#xA;&#x9;&#x9;cardDeck = new CardDeck(2);&#xA;&#x9;&#x9;assertTrue(&quot;[\&quot;S1\&quot;, \&quot;D1\&quot;, \&quot;S2\&quot;, \&quot;D2\&quot;, \&quot;H1\&quot;, \&quot;C1\&quot;, \&quot;H2\&quot;, \&quot;C2\&quot;] failed after new CardDeck(2), shufflePerfectly().&quot;, &#xA;&#x9;&#x9;&#x9;&#x9;assertEquals_cardDeck(new String[] {&quot;S1&quot;, &quot;D1&quot;, &quot;S2&quot;, &quot;D2&quot;, &quot;H1&quot;, &quot;C1&quot;, &quot;H2&quot;, &quot;C2&quot;}));&#xA;&#x9;}&#xA;&#x9;&#xA;&#x9;private boolean assertEquals_cardDeck(String[] expected) {&#xA;&#x9;&#x9;if (cardDeck.getCardCount() != expected.length) &#xA;&#x9;&#x9;&#x9;return false;&#xA;&#xA;&#x9;&#x9;for (int i = 0; i &lt; expected.length; i++) {&#xA;&#x9;&#x9;&#x9;Card card = cardDeck.getCard(i);&#xA;&#x9;&#x9;&#x9;&#xA;&#x9;&#x9;&#x9;String expectedString = expected[i];&#xA;&#x9;&#x9;&#x9;String actualString = String.format(&quot;%s%s&quot;, card.getSuit(), card.getFace());&#xA;&#x9;&#x9;&#x9;&#xA;&#x9;&#x9;&#x9;if (!expectedString.equals(actualString)) return false;&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;&#xA;&#x9;&#x9;return true" edit="/1/@proposals.0/@proposals.0/@attempts.15/@edit" start="8" end="-8"/>
        </attempts>
        <attempts xsi:type="jdt:JdtSourceEditEvent" timestamp="1523367852952" resourcePath="/ovinger/src/testing/CardDeck.java" sizeMeasure="45" className="testing.CardDeck">
          <edit xsi:type="exercise:ReplaceSubstringEdit" storedString="ava.util.ArrayList;&#xA;import java.util.Arrays;&#xA;import java.util.List;&#xA;&#xA;&#xA;public class CardDeck {&#xA;&#xA;&#x9;private List&lt;Card> deck = new ArrayList&lt;>();&#xA;&#x9;private List&lt;Character> suits = Arrays.asList('S', 'H', 'D', 'C');&#xA;&#xA;&#x9;public CardDeck(int n) {&#xA;&#x9;&#x9;for (int j = 0; j&lt;4; j++) {&#xA;&#x9;&#x9;&#x9;for (int i = 1; i &lt; n; i++) {&#xA;&#x9;&#x9;&#x9;&#x9;Card card = new Card(suits.get(j), i);&#xA;&#x9;&#x9;&#x9;&#x9;deck.add(card);&#xA;&#x9;&#x9;&#x9;}&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#xA;&#x9;public int getCardCount() {&#xA;&#x9;&#x9;return deck.size();&#xA;&#x9;}&#xA;&#xA;&#x9;public Card getCard(int n) {&#xA;&#x9;&#x9;try{&#xA;&#x9;&#x9;&#x9;return deck.get(n);&#xA;&#x9;&#x9;}&#xA;&#x9;&#x9;catch (IndexOutOfBoundsException e) {&#xA;&#x9;&#x9;&#x9;throw new IllegalArgumentException();&#xA;&#x9;&#x9;}&#xA;&#x9;}&#xA;&#xA;&#x9;public void shufflePerfectly() {&#xA;&#x9;&#x9; int bottom = 0;&#xA;&#x9;&#x9; int middle = deck.size()/2;&#xA;&#x9;&#x9; while (middle &lt; deck.size()) {&#xA;&#x9;&#x9;&#x9;deck.set(bottom, deck.get(bottom));&#xA;&#x9;&#x9;&#x9;deck.set(bottom+1, deck.get(middle));&#xA;&#x9;&#x9;&#x9;bottom ++;&#xA;&#x9;&#x9;&#x9;middle ++;&#xA;&#x9;&#x9;}" edit="/1/@proposals.0/@proposals.0/@attempts.16/@edit" start="26" end="-7"/>
        </attempts>
      </proposals>
      <proposals xsi:type="jdt:JdtLaunchProposal" question="/0/@parts.0/@tasks.1/@q" answer="/0/@parts.0/@tasks.1/@a">
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1519741855291" mode="run" className="debugging.StringMergingIteratorTest">
          <launchAttrNames>org.eclipse.jdt.junit.CONTAINER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.junit.TEST_KIND</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.VM_ARGUMENTS</launchAttrNames>
          <launchAttrValues></launchAttrValues>
          <launchAttrValues>org.eclipse.jdt.junit.loader.junit4</launchAttrValues>
          <launchAttrValues>debugging.StringMergingIteratorTest</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>-ea</launchAttrValues>
          <consoleOutput></consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1519741948873" mode="debug" className="debugging.StringMergingIteratorProgram">
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrValues>debugging.StringMergingIteratorProgram</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <consoleOutput>Exception in thread &quot;main&quot; java.util.NoSuchElementException&#xD;
	at java.util.ArrayList$Itr.next(ArrayList.java:862)&#xD;
	at debugging.StringMergingIterator.next(StringMergingIterator.java:31)&#xD;
	at debugging.StringMergingIteratorProgram.main(StringMergingIteratorProgram.java:21)&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1519741984184" mode="debug" className="debugging.StringMergingIteratorProgram">
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrValues>debugging.StringMergingIteratorProgram</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <consoleOutput></consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1519741996845" mode="debug" className="debugging.StringMergingIteratorProgram">
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrValues>debugging.StringMergingIteratorProgram</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <consoleOutput></consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1519742021425" mode="debug" className="debugging.StringMergingIteratorProgram">
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrValues>debugging.StringMergingIteratorProgram</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <consoleOutput></consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1519742089361" mode="debug" className="debugging.StringMergingIteratorProgram">
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrValues>debugging.StringMergingIteratorProgram</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <consoleOutput></consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1519742152696" mode="debug" className="debugging.StringMergingIteratorProgram">
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrValues>debugging.StringMergingIteratorProgram</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <consoleOutput>Hei&#xD;
</consoleOutput>
          <consoleOutput></consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1519742264304" mode="debug" className="debugging.StringMergingIteratorProgram">
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrValues>debugging.StringMergingIteratorProgram</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <consoleOutput>Hei&#xD;
</consoleOutput>
          <consoleOutput>Exception in thread &quot;main&quot; java.util.NoSuchElementException&#xD;
	at java.util.ArrayList$Itr.next(ArrayList.java:862)&#xD;
	at debugging.StringMergingIterator.next(StringMergingIterator.java:31)&#xD;
	at debugging.StringMergingIteratorProgram.main(StringMergingIteratorProgram.java:21)&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1519742382514" mode="debug" className="debugging.StringMergingIteratorProgram">
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrValues>debugging.StringMergingIteratorProgram</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <consoleOutput></consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1519742412375" mode="debug" className="debugging.StringMergingIteratorProgram">
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrValues>debugging.StringMergingIteratorProgram</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <consoleOutput></consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1519742448679" mode="debug" className="debugging.StringMergingIteratorProgram">
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrValues>debugging.StringMergingIteratorProgram</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <consoleOutput>Hei&#xD;
</consoleOutput>
          <consoleOutput></consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1519743272055" mode="run" className="interfaces.CardComparatorTest">
          <launchAttrNames>org.eclipse.jdt.junit.CONTAINER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.junit.TEST_KIND</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.VM_ARGUMENTS</launchAttrNames>
          <launchAttrValues></launchAttrValues>
          <launchAttrValues>org.eclipse.jdt.junit.loader.junit4</launchAttrValues>
          <launchAttrValues>interfaces.CardComparatorTest</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>-ea</launchAttrValues>
          <consoleOutput></consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1519743275949" mode="run" className="interfaces.CardContainerIteratorTest">
          <launchAttrNames>org.eclipse.jdt.junit.CONTAINER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.junit.TEST_KIND</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.VM_ARGUMENTS</launchAttrNames>
          <launchAttrValues></launchAttrValues>
          <launchAttrValues>org.eclipse.jdt.junit.loader.junit4</launchAttrValues>
          <launchAttrValues>interfaces.CardContainerIteratorTest</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>-ea</launchAttrValues>
          <consoleOutput></consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1519743278184" mode="run" className="interfaces.CardDeckTest">
          <launchAttrNames>org.eclipse.jdt.junit.CONTAINER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.junit.TEST_KIND</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.VM_ARGUMENTS</launchAttrNames>
          <launchAttrValues></launchAttrValues>
          <launchAttrValues>org.eclipse.jdt.junit.loader.junit4</launchAttrValues>
          <launchAttrValues>interfaces.CardDeckTest</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>-ea</launchAttrValues>
          <consoleOutput></consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1519743280150" mode="run" className="interfaces.CardHandTest">
          <launchAttrNames>org.eclipse.jdt.junit.CONTAINER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.junit.TEST_KIND</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.VM_ARGUMENTS</launchAttrNames>
          <launchAttrValues></launchAttrValues>
          <launchAttrValues>org.eclipse.jdt.junit.loader.junit4</launchAttrValues>
          <launchAttrValues>interfaces.CardHandTest</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>-ea</launchAttrValues>
          <consoleOutput></consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1519743283137" mode="run" className="interfaces.CardPredicateTest">
          <launchAttrNames>org.eclipse.jdt.junit.CONTAINER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.junit.TEST_KIND</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.VM_ARGUMENTS</launchAttrNames>
          <launchAttrValues></launchAttrValues>
          <launchAttrValues>org.eclipse.jdt.junit.loader.junit4</launchAttrValues>
          <launchAttrValues>interfaces.CardPredicateTest</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>-ea</launchAttrValues>
          <consoleOutput></consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1519743399569" mode="run" className="interfaces.NamedComparatorTest">
          <launchAttrNames>org.eclipse.jdt.junit.CONTAINER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.junit.TEST_KIND</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.VM_ARGUMENTS</launchAttrNames>
          <launchAttrValues></launchAttrValues>
          <launchAttrValues>org.eclipse.jdt.junit.loader.junit4</launchAttrValues>
          <launchAttrValues>interfaces.NamedComparatorTest</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>-ea</launchAttrValues>
          <consoleOutput></consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1519743407696" mode="run" className="interfaces.Person1Test">
          <launchAttrNames>org.eclipse.jdt.junit.CONTAINER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.junit.TEST_KIND</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.VM_ARGUMENTS</launchAttrNames>
          <launchAttrValues></launchAttrValues>
          <launchAttrValues>org.eclipse.jdt.junit.loader.junit4</launchAttrValues>
          <launchAttrValues>interfaces.Person1Test</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>-ea</launchAttrValues>
          <consoleOutput></consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1519743411452" mode="run" className="interfaces.Person2Test">
          <launchAttrNames>org.eclipse.jdt.junit.CONTAINER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.junit.TEST_KIND</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.VM_ARGUMENTS</launchAttrNames>
          <launchAttrValues></launchAttrValues>
          <launchAttrValues>org.eclipse.jdt.junit.loader.junit4</launchAttrValues>
          <launchAttrValues>interfaces.Person2Test</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>-ea</launchAttrValues>
          <consoleOutput></consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1519743558627" mode="run" className="interfaces.BinaryComputingIteratorTest">
          <launchAttrNames>org.eclipse.jdt.junit.CONTAINER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.junit.TEST_KIND</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.VM_ARGUMENTS</launchAttrNames>
          <launchAttrValues></launchAttrValues>
          <launchAttrValues>org.eclipse.jdt.junit.loader.junit4</launchAttrValues>
          <launchAttrValues>interfaces.BinaryComputingIteratorTest</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>-ea</launchAttrValues>
          <consoleOutput></consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1519743787591" mode="run" className="interfaces.BinaryComputingIteratorTest">
          <launchAttrNames>org.eclipse.jdt.junit.CONTAINER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.junit.TEST_KIND</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.VM_ARGUMENTS</launchAttrNames>
          <launchAttrValues></launchAttrValues>
          <launchAttrValues>org.eclipse.jdt.junit.loader.junit4</launchAttrValues>
          <launchAttrValues>interfaces.BinaryComputingIteratorTest</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>-ea</launchAttrValues>
          <consoleOutput></consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1519743873776" mode="run" className="interfaces.BinaryComputingIteratorTest">
          <launchAttrNames>org.eclipse.jdt.junit.CONTAINER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.junit.TEST_KIND</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.VM_ARGUMENTS</launchAttrNames>
          <launchAttrValues></launchAttrValues>
          <launchAttrValues>org.eclipse.jdt.junit.loader.junit4</launchAttrValues>
          <launchAttrValues>interfaces.BinaryComputingIteratorTest</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>-ea</launchAttrValues>
          <consoleOutput></consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1519743970560" mode="debug" className="debugging.StringMergingIteratorProgram">
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrValues>debugging.StringMergingIteratorProgram</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1519744003095" mode="debug" className="debugging.StringMergingIteratorProgram">
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrValues>debugging.StringMergingIteratorProgram</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <consoleOutput>hei&#xD;
</consoleOutput>
          <consoleOutput></consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1519744113724" mode="debug" className="debugging.StringMergingIteratorProgram">
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrValues>debugging.StringMergingIteratorProgram</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <consoleOutput>hei&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1519744144574" mode="debug" className="debugging.StringMergingIteratorProgram">
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrValues>debugging.StringMergingIteratorProgram</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1519744157482" mode="debug" className="debugging.CoffeeCupProgram">
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrValues>debugging.CoffeeCupProgram</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <consoleOutput>Exception in thread &quot;main&quot; java.lang.IllegalArgumentException: You can't drink that much coffee!&#xD;
	at debugging.CoffeeCup.drinkCoffee(CoffeeCup.java:61)&#xD;
	at debugging.CoffeeCupProgram.part1(CoffeeCupProgram.java:28)&#xD;
	at debugging.CoffeeCupProgram.run(CoffeeCupProgram.java:16)&#xD;
	at debugging.CoffeeCupProgram.main(CoffeeCupProgram.java:56)&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1519831684374" mode="run" className="app.Trace">
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrValues>app.Trace</launchAttrValues>
          <launchAttrValues>Physics</launchAttrValues>
          <consoleOutput>Exception in thread &quot;main&quot; java.lang.NumberFormatException: For input string: &quot;2,802030237E-1&quot;&#xD;
	at java.base/jdk.internal.math.FloatingDecimal.readJavaFormatString(FloatingDecimal.java:2054)&#xD;
	at java.base/jdk.internal.math.FloatingDecimal.parseDouble(FloatingDecimal.java:110)&#xD;
	at java.base/java.lang.Double.parseDouble(Double.java:543)&#xD;
	at analysis.Interpolation.parseFile(Interpolation.java:148)&#xD;
	at analysis.Interpolation.polynomialSplineInterpolation(Interpolation.java:47)&#xD;
	at app.Trace.initializeFunc(Trace.java:109)&#xD;
	at app.Trace.validateTrace(Trace.java:121)&#xD;
	at app.Trace.trace(Trace.java:203)&#xD;
	at app.Trace.main(Trace.java:297)&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1519833244656" mode="run" className="app.Trace">
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrValues>app.Trace</launchAttrValues>
          <launchAttrValues>Physics</launchAttrValues>
          <consoleOutput>140604		a = 1.14221983		 v = 1.13185764		 x = 1.44025231		 eKin = 8.96753096		 ePot = 34.28492657		 eTot = 43.25245753		&#xD;
140605		a = 1.14275888		 v = 1.13186906		 x = 1.44026348		 eKin = 8.96771196		 ePot = 34.28474553		 eTot = 43.25245748		&#xD;
140606		a = 1.14329709		 v = 1.13188050		 x = 1.44027465		 eKin = 8.96789304		 ePot = 34.28456440		 eTot = 43.25245744		&#xD;
140607		a = 1.14383445		 v = 1.13189193		 x = 1.44028581		 eKin = 8.96807421		 ePot = 34.28438318		 eTot = 43.25245739		&#xD;
140608		a = 1.14437097		 v = 1.13190338		 x = 1.44029698		 eKin = 8.96825547		 ePot = 34.28420188		 eTot = 43.25245735		&#xD;
140609		a = 1.14490664		 v = 1.13191483		 x = 1.44030815		 eKin = 8.96843681		 ePot = 34.28402049		 eTot = 43.25245731		&#xD;
140610		a = 1.14544147		 v = 1.13192628		 x = 1.44031931		 eKin = 8.96861824		 ePot = 34.28383902		 eTot = 43.25245726		&#xD;
140611		a = 1.14597545		 v = 1.13193774		 x = 1.44033048		 eKin = 8.96879976		 ePot = 34.28365746		 eTot = 43.25245722		&#xD;
140612		a = 1.14650858		 v = 1.13194921		 x = 1.44034165		 eKin = 8.96898136		 ePot = 34.28347581		 eTot = 43.25245717		&#xD;
140613		a = 1.14704087		 v = 1.13196068		 x = 1.44035281		 eKin = 8.96916305		 ePot = 34.28329408		 eTot = 43.25245713		&#xD;
140614		a = 1.14757232		 v = 1.13197215		 x = 1.44036398		 eKin = 8.96934483		 ePot = 34.28311226		 eTot = 43.25245708		&#xD;
140615		a = 1.14810292		 v = 1.13198363		 x = 1.44037515		 eKin = 8.96952669		 ePot = 34.28293035		 eTot = 43.25245704		&#xD;
140616		a = 1.14863268		 v = 1.13199512		 x = 1.44038631		 eKin = 8.96970864		 ePot = 34.28274836		 eTot = 43.25245700		&#xD;
140617		a = 1.14916159		 v = 1.13200661		 x = 1.44039748		 eKin = 8.96989067		 ePot = 34.28256628		 eTot = 43.25245695		&#xD;
140618		a = 1.14968966		 v = 1.13201811		 x = 1.44040865		 eKin = 8.97007279		 ePot = 34.28238412		 eTot = 43.25245691		&#xD;
140619		a = 1.15021688		 v = 1.13202961		 x = 1.44041982		 eKin = 8.97025499		 ePot = 34.28220187		 eTot = 43.25245686		&#xD;
140620		a = 1.15074326		 v = 1.13204112		 x = 1.44043098		 eKin = 8.97043728		 ePot = 34.28201954		 eTot = 43.25245682		&#xD;
140621		a = 1.15126879		 v = 1.13205263		 x = 1.44044215		 eKin = 8.97061966		 ePot = 34.28183712		 eTot = 43.25245678		&#xD;
140622		a = 1.15179349		 v = 1.13206415		 x = 1.44045332		 eKin = 8.97080212		 ePot = 34.28165461		 eTot = 43.25245673		&#xD;
140623		a = 1.15231733		 v = 1.13207567		 x = 1.44046448		 eKin = 8.97098467		 ePot = 34.28147202		 eTot = 43.25245669		&#xD;
140624		a = 1.15284034		 v = 1.13208720		 x = 1.44047565		 eKin = 8.97116730		 ePot = 34.28128935		 eTot = 43.25245665		&#xD;
140625		a = 1.15336249		 v = 1.13209873		 x = 1.44048682		 eKin = 8.97135001		 ePot = 34.28110659		 eTot = 43.25245660		&#xD;
140626		a = 1.15388381		 v = 1.13211027		 x = 1.44049798		 eKin = 8.97153281		 ePot = 34.28092375		 eTot = 43.25245656		&#xD;
140627		a = 1.15440428		 v = 1.13212182		 x = 1.44050915		 eKin = 8.97171570		 ePot = 34.28074082		 eTot = 43.25245651		&#xD;
140628		a = 1.15492391		 v = 1.13213337		 x = 1.44052031		 eKin = 8.97189866		 ePot = 34.28055781		 eTot = 43.25245647		&#xD;
140629		a = 1.15544270		 v = 1.13214492		 x = 1.44053148		 eKin = 8.97208172		 ePot = 34.28037471		 eTot = 43.25245643		&#xD;
140630		a = 1.15596064		 v = 1.13215648		 x = 1.44054265		 eKin = 8.97226485		 ePot = 34.28019153		 eTot = 43.25245639		&#xD;
140631		a = 1.15647774		 v = 1.13216805		 x = 1.44055381		 eKin = 8.97244808		 ePot = 34.28000827		 eTot = 43.25245634		&#xD;
140632		a = 1.15699400		 v = 1.13217962		 x = 1.44056498		 eKin = 8.97263138		 ePot = 34.27982492		 eTot = 43.25245630		&#xD;
140633		a = 1.15750941		 v = 1.13219119		 x = 1.44057615		 eKin = 8.97281477		 ePot = 34.27964149		 eTot = 43.25245626		&#xD;
140634		a = 1.15802398		 v = 1.13220277		 x = 1.44058731		 eKin = 8.97299824		 ePot = 34.27945797		 eTot = 43.25245621		&#xD;
140635		a = 1.15853771		 v = 1.13221436		 x = 1.44059848		 eKin = 8.97318180		 ePot = 34.27927437		 eTot = 43.25245617		&#xD;
140636		a = 1.15905059		 v = 1.13222595		 x = 1.44060965		 eKin = 8.97336544		 ePot = 34.27909069		 eTot = 43.25245613		&#xD;
140637		a = 1.15956264		 v = 1.13223754		 x = 1.44062081		 eKin = 8.97354916		 ePot = 34.27890693		 eTot = 43.25245609		&#xD;
140638		a = 1.16007384		 v = 1.13224914		 x = 1.44063198		 eKin = 8.97373296		 ePot = 34.27872308		 eTot = 43.25245604		&#xD;
140639		a = 1.16058420		 v = 1.13226075		 x = 1.44064314		 eKin = 8.97391685		 ePot = 34.27853915		 eTot = 43.25245600		&#xD;
140640		a = 1.16109371		 v = 1.13227236		 x = 1.44065431		 eKin = 8.97410082		 ePot = 34.27835514		 eTot = 43.25245596		&#xD;
140641		a = 1.16160239		 v = 1.13228398		 x = 1.44066548		 eKin = 8.97428488		 ePot = 34.27817104		 eTot = 43.25245592		&#xD;
140642		a = 1.16211022		 v = 1.13229560		 x = 1.44067664		 eKin = 8.97446901		 ePot = 34.27798686		 eTot = 43.25245587		&#xD;
140643		a = 1.16261721		 v = 1.13230722		 x = 1.44068781		 eKin = 8.97465323		 ePot = 34.27780260		 eTot = 43.25245583		&#xD;
140644		a = 1.16312336		 v = 1.13231885		 x = 1.44069898		 eKin = 8.97483753		 ePot = 34.27761826		 eTot = 43.25245579		&#xD;
140645		a = 1.16362866		 v = 1.13233049		 x = 1.44071014		 eKin = 8.97502191		 ePot = 34.27743383		 eTot = 43.25245575		&#xD;
140646		a = 1.16413313		 v = 1.13234213		 x = 1.44072131		 eKin = 8.97520638		 ePot = 34.27724933		 eTot = 43.25245570		&#xD;
140647		a = 1.16463675		 v = 1.13235378		 x = 1.44073247		 eKin = 8.97539092		 ePot = 34.27706474		 eTot = 43.25245566		&#xD;
140648		a = 1.16513953		 v = 1.13236543		 x = 1.44074364		 eKin = 8.97557555		 ePot = 34.27688007		 eTot = 43.25245562		&#xD;
140649		a = 1.16564148		 v = 1.13237709		 x = 1.44075481		 eKin = 8.97576026		 ePot = 34.27669532		 eTot = 43.25245558		&#xD;
140650		a = 1.16614257		 v = 1.13238875		 x = 1.44076597		 eKin = 8.97594505		 ePot = 34.27651048		 eTot = 43.25245554		&#xD;
140651		a = 1.16664283		 v = 1.13240041		 x = 1.44077714		 eKin = 8.97612993		 ePot = 34.27632557		 eTot = 43.25245549		&#xD;
140652		a = 1.16714225		 v = 1.13241209		 x = 1.44078830		 eKin = 8.97631488		 ePot = 34.27614057		 eTot = 43.25245545		&#xD;
140653		a = 1.16764083		 v = 1.13242376		 x = 1.44079947		 eKin = 8.97649992		 ePot = 34.27595550		 eTot = 43.25245541		&#xD;
140654		a = 1.16813856		 v = 1.13243544		 x = 1.44081064		 eKin = 8.97668503		 ePot = 34.27577034		 eTot = 43.25245537		&#xD;
140655		a = 1.16863546		 v = 1.13244713		 x = 1.44082180		 eKin = 8.97687023		 ePot = 34.27558510		 eTot = 43.25245533		&#xD;
140656		a = 1.16913151		 v = 1.13245882		 x = 1.44083297		 eKin = 8.97705551		 ePot = 34.27539978		 eTot = 43.25245529		&#xD;
140657		a = 1.16962673		 v = 1.13247052		 x = 1.44084413		 eKin = 8.97724086		 ePot = 34.27521438		 eTot = 43.25245525		&#xD;
140658		a = 1.17012110		 v = 1.13248222		 x = 1.44085530		 eKin = 8.97742630		 ePot = 34.27502890		 eTot = 43.25245520		&#xD;
140659		a = 1.17061463		 v = 1.13249392		 x = 1.44086646		 eKin = 8.97761182		 ePot = 34.27484334		 eTot = 43.25245516		&#xD;
140660		a = 1.17110733		 v = 1.13250564		 x = 1.44087763		 eKin = 8.97779742		 ePot = 34.27465770		 eTot = 43.25245512		&#xD;
140661		a = 1.17159918		 v = 1.13251735		 x = 1.44088880		 eKin = 8.97798310		 ePot = 34.27447198		 eTot = 43.25245508		&#xD;
140662		a = 1.17209019		 v = 1.13252907		 x = 1.44089996		 eKin = 8.97816886		 ePot = 34.27428618		 eTot = 43.25245504		&#xD;
140663		a = 1.17258036		 v = 1.13254080		 x = 1.44091113		 eKin = 8.97835470		 ePot = 34.27410030		 eTot = 43.25245500		&#xD;
140664		a = 1.17306970		 v = 1.13255253		 x = 1.44092229		 eKin = 8.97854062		 ePot = 34.27391434		 eTot = 43.25245496		&#xD;
140665		a = 1.17355819		 v = 1.13256426		 x = 1.44093346		 eKin = 8.97872661		 ePot = 34.27372830		 eTot = 43.25245492		&#xD;
140666		a = 1.17404584		 v = 1.13257600		 x = 1.44094462		 eKin = 8.97891269		 ePot = 34.27354219		 eTot = 43.25245488		&#xD;
140667		a = 1.17453266		 v = 1.13258775		 x = 1.44095579		 eKin = 8.97909885		 ePot = 34.27335599		 eTot = 43.25245484		&#xD;
140668		a = 1.17501863		 v = 1.13259950		 x = 1.44096696		 eKin = 8.97928508		 ePot = 34.27316971		 eTot = 43.25245480		&#xD;
140669		a = 1.17550377		 v = 1.13261126		 x = 1.44097812		 eKin = 8.97947140		 ePot = 34.27298336		 eTot = 43.25245475		&#xD;
140670		a = 1.17598806		 v = 1.13262302		 x = 1.44098929		 eKin = 8.97965779		 ePot = 34.27279692		 eTot = 43.25245471		&#xD;
140671		a = 1.17647152		 v = 1.13263478		 x = 1.44100045		 eKin = 8.97984426		 ePot = 34.27261041		 eTot = 43.25245467		&#xD;
140672		a = 1.17695414		 v = 1.13264655		 x = 1.44101162		 eKin = 8.98003081		 ePot = 34.27242382		 eTot = 43.25245463		&#xD;
140673		a = 1.17743592		 v = 1.13265832		 x = 1.44102278		 eKin = 8.98021744		 ePot = 34.27223715		 eTot = 43.25245459		&#xD;
140674		a = 1.17791685		 v = 1.13267010		 x = 1.44103395		 eKin = 8.98040415		 ePot = 34.27205040		 eTot = 43.25245455		&#xD;
140675		a = 1.17839696		 v = 1.13268189		 x = 1.44104511		 eKin = 8.98059094		 ePot = 34.27186358		 eTot = 43.25245451		&#xD;
140676		a = 1.17887622		 v = 1.13269368		 x = 1.44105628		 eKin = 8.98077780		 ePot = 34.27167667		 eTot = 43.25245447		&#xD;
140677		a = 1.17935464		 v = 1.13270547		 x = 1.44106745		 eKin = 8.98096474		 ePot = 34.27148969		 eTot = 43.25245443		&#xD;
140678		a = 1.17983223		 v = 1.13271727		 x = 1.44107861		 eKin = 8.98115176		 ePot = 34.27130263		 eTot = 43.25245439		&#xD;
140679		a = 1.18030897		 v = 1.13272907		 x = 1.44108978		 eKin = 8.98133886		 ePot = 34.27111549		 eTot = 43.25245435		&#xD;
140680		a = 1.18078488		 v = 1.13274088		 x = 1.44110094		 eKin = 8.98152603		 ePot = 34.27092828		 eTot = 43.25245431		&#xD;
140681		a = 1.18125995		 v = 1.13275269		 x = 1.44111211		 eKin = 8.98171329		 ePot = 34.27074099		 eTot = 43.25245427		&#xD;
140682		a = 1.18173418		 v = 1.13276451		 x = 1.44112327		 eKin = 8.98190062		 ePot = 34.27055362		 eTot = 43.25245423		&#xD;
140683		a = 1.18220758		 v = 1.13277633		 x = 1.44113444		 eKin = 8.98208802		 ePot = 34.27036617		 eTot = 43.25245419		&#xD;
140684		a = 1.18268013		 v = 1.13278816		 x = 1.44114560		 eKin = 8.98227551		 ePot = 34.27017865		 eTot = 43.25245415		&#xD;
140685		a = 1.18315185		 v = 1.13279999		 x = 1.44115677		 eKin = 8.98246307		 ePot = 34.26999105		 eTot = 43.25245411		&#xD;
140686		a = 1.18362273		 v = 1.13281183		 x = 1.44116793		 eKin = 8.98265070		 ePot = 34.26980337		 eTot = 43.25245408		&#xD;
140687		a = 1.18409277		 v = 1.13282367		 x = 1.44117910		 eKin = 8.98283842		 ePot = 34.26961562		 eTot = 43.25245404		&#xD;
140688		a = 1.18456198		 v = 1.13283551		 x = 1.44119026		 eKin = 8.98302621		 ePot = 34.26942779		 eTot = 43.25245400		&#xD;
140689		a = 1.18503035		 v = 1.13284736		 x = 1.44120143		 eKin = 8.98321408		 ePot = 34.26923988		 eTot = 43.25245396		&#xD;
140690		a = 1.18549788		 v = 1.13285922		 x = 1.44121259		 eKin = 8.98340202		 ePot = 34.26905190		 eTot = 43.25245392		&#xD;
140691		a = 1.18596457		 v = 1.13287108		 x = 1.44122376		 eKin = 8.98359004		 ePot = 34.26886384		 eTot = 43.25245388		&#xD;
140692		a = 1.18643043		 v = 1.13288294		 x = 1.44123493		 eKin = 8.98377813		 ePot = 34.26867571		 eTot = 43.25245384		&#xD;
140693		a = 1.18689544		 v = 1.13289481		 x = 1.44124609		 eKin = 8.98396631		 ePot = 34.26848750		 eTot = 43.25245380		&#xD;
140694		a = 1.18735963		 v = 1.13290668		 x = 1.44125726		 eKin = 8.98415455		 ePot = 34.26829921		 eTot = 43.25245376		&#xD;
140695		a = 1.18782297		 v = 1.13291856		 x = 1.44126842		 eKin = 8.98434287		 ePot = 34.26811085		 eTot = 43.25245372		&#xD;
140696		a = 1.18828548		 v = 1.13293044		 x = 1.44127959		 eKin = 8.98453127		 ePot = 34.26792241		 eTot = 43.25245368		&#xD;
140697		a = 1.18874715		 v = 1.13294233		 x = 1.44129075		 eKin = 8.98471975		 ePot = 34.26773390		 eTot = 43.25245365		&#xD;
140698		a = 1.18920798		 v = 1.13295422		 x = 1.44130192		 eKin = 8.98490829		 ePot = 34.26754531		 eTot = 43.25245361		&#xD;
140699		a = 1.18966798		 v = 1.13296612		 x = 1.44131308		 eKin = 8.98509692		 ePot = 34.26735665		 eTot = 43.25245357		&#xD;
140700		a = 1.19012714		 v = 1.13297802		 x = 1.44132425		 eKin = 8.98528562		 ePot = 34.26716791		 eTot = 43.25245353		&#xD;
140701		a = 1.19058547		 v = 1.13298993		 x = 1.44133541		 eKin = 8.98547439		 ePot = 34.26697910		 eTot = 43.25245349		&#xD;
140702		a = 1.19104296		 v = 1.13300184		 x = 1.44134658		 eKin = 8.98566324		 ePot = 34.26679022		 eTot = 43.25245345		&#xD;
140703		a = 1.19149961		 v = 1.13301375		 x = 1.44135774		 eKin = 8.98585216		 ePot = 34.26660125		 eTot = 43.25245342		&#xD;
140704		a = 1.19195542		 v = 1.13302567		 x = 1.44136891		 eKin = 8.98604116		 ePot = 34.26641222		 eTot = 43.25245338		&#xD;
140705		a = 1.19241040		 v = 1.13303760		 x = 1.44138007		 eKin = 8.98623023		 ePot = 34.26622311		 eTot = 43.25245334		&#xD;
140706		a = 1.19286455		 v = 1.13304953		 x = 1.44139124		 eKin = 8.98641937		 ePot = 34.26603393		 eTot = 43.25245330		&#xD;
140707		a = 1.19331786		 v = 1.13306146		 x = 1.44140240		 eKin = 8.98660859		 ePot = 34.26584467		 eTot = 43.25245326		&#xD;
140708		a = 1.19377033		 v = 1.13307340		 x = 1.44141357		 eKin = 8.98679789		 ePot = 34.26565534		 eTot = 43.25245322		&#xD;
140709		a = 1.19422197		 v = 1.13308534		 x = 1.44142473		 eKin = 8.98698725		 ePot = 34.26546593		 eTot = 43.25245319		&#xD;
140710		a = 1.19467277		 v = 1.13309729		 x = 1.44143590		 eKin = 8.98717669		 ePot = 34.26527645		 eTot = 43.25245315		&#xD;
140711		a = 1.19512273		 v = 1.13310924		 x = 1.44144706		 eKin = 8.98736621		 ePot = 34.26508690		 eTot = 43.25245311		&#xD;
140712		a = 1.19557187		 v = 1.13312119		 x = 1.44145823		 eKin = 8.98755580		 ePot = 34.26489728		 eTot = 43.25245307		&#xD;
140713		a = 1.19602016		 v = 1.13313315		 x = 1.44146939		 eKin = 8.98774546		 ePot = 34.26470758		 eTot = 43.25245304		&#xD;
140714		a = 1.19646762		 v = 1.13314512		 x = 1.44148056		 eKin = 8.98793519		 ePot = 34.26451781		 eTot = 43.25245300		&#xD;
140715		a = 1.19691425		 v = 1.13315709		 x = 1.44149172		 eKin = 8.98812500		 ePot = 34.26432796		 eTot = 43.25245296		&#xD;
140716		a = 1.19736004		 v = 1.13316906		 x = 1.44150289		 eKin = 8.98831488		 ePot = 34.26413804		 eTot = 43.25245292		&#xD;
140717		a = 1.19780499		 v = 1.13318104		 x = 1.44151405		 eKin = 8.98850483		 ePot = 34.26394806		 eTot = 43.25245289		&#xD;
140718		a = 1.19824911		 v = 1.13319302		 x = 1.44152522		 eKin = 8.98869486		 ePot = 34.26375799		 eTot = 43.25245285		&#xD;
140719		a = 1.19869240		 v = 1.13320501		 x = 1.44153638		 eKin = 8.98888495		 ePot = 34.26356786		 eTot = 43.25245281		&#xD;
140720		a = 1.19913485		 v = 1.13321700		 x = 1.44154755		 eKin = 8.98907512		 ePot = 34.26337765		 eTot = 43.25245277		&#xD;
140721		a = 1.19957646		 v = 1.13322899		 x = 1.44155871		 eKin = 8.98926537		 ePot = 34.26318737		 eTot = 43.25245274		&#xD;
140722		a = 1.20001724		 v = 1.13324099		 x = 1.44156988		 eKin = 8.98945568		 ePot = 34.26299702		 eTot = 43.25245270		&#xD;
140723		a = 1.20045719		 v = 1.13325300		 x = 1.44158104		 eKin = 8.98964607		 ePot = 34.26280660		 eTot = 43.25245266		&#xD;
140724		a = 1.20089630		 v = 1.13326501		 x = 1.44159221		 eKin = 8.98983652		 ePot = 34.26261610		 eTot = 43.25245263		&#xD;
140725		a = 1.20133458		 v = 1.13327702		 x = 1.44160337		 eKin = 8.99002705		 ePot = 34.26242554		 eTot = 43.25245259		&#xD;
140726		a = 1.20177203		 v = 1.13328904		 x = 1.44161454		 eKin = 8.99021766		 ePot = 34.26223490		 eTot = 43.25245255		&#xD;
140727		a = 1.20220864		 v = 1.13330106		 x = 1.44162570		 eKin = 8.99040833		 ePot = 34.26204419		 eTot = 43.25245252		&#xD;
140728		a = 1.20264441		 v = 1.13331309		 x = 1.44163687		 eKin = 8.99059907		 ePot = 34.26185341		 eTot = 43.25245248		&#xD;
140729		a = 1.20307935		 v = 1.13332512		 x = 1.44164803		 eKin = 8.99078989		 ePot = 34.26166256		 eTot = 43.25245244		&#xD;
140730		a = 1.20351346		 v = 1.13333715		 x = 1.44165920		 eKin = 8.99098077		 ePot = 34.26147163		 eTot = 43.25245241		&#xD;
140731		a = 1.20394674		 v = 1.13334919		 x = 1.44167036		 eKin = 8.99117173		 ePot = 34.26128064		 eTot = 43.25245237		&#xD;
140732		a = 1.20437918		 v = 1.13336124		 x = 1.44168153		 eKin = 8.99136276		 ePot = 34.26108957		 eTot = 43.25245233		&#xD;
140733		a = 1.20481079		 v = 1.13337329		 x = 1.44169269		 eKin = 8.99155386		 ePot = 34.26089844		 eTot = 43.25245230		&#xD;
140734		a = 1.20524156		 v = 1.13338534		 x = 1.44170386		 eKin = 8.99174503		 ePot = 34.26070723		 eTot = 43.25245226		&#xD;
140735		a = 1.20567150		 v = 1.13339739		 x = 1.44171502		 eKin = 8.99193627		 ePot = 34.26051596		 eTot = 43.25245222		&#xD;
140736		a = 1.20610061		 v = 1.13340946		 x = 1.44172619		 eKin = 8.99212758		 ePot = 34.26032461		 eTot = 43.25245219		&#xD;
140737		a = 1.20652888		 v = 1.13342152		 x = 1.44173735		 eKin = 8.99231895		 ePot = 34.26013320		 eTot = 43.25245215		&#xD;
140738		a = 1.20695632		 v = 1.13343359		 x = 1.44174852		 eKin = 8.99251040		 ePot = 34.25994171		 eTot = 43.25245212		&#xD;
140739		a = 1.20738293		 v = 1.13344566		 x = 1.44175968		 eKin = 8.99270192		 ePot = 34.25975016		 eTot = 43.25245208		&#xD;
140740		a = 1.20780871		 v = 1.13345774		 x = 1.44177085		 eKin = 8.99289351		 ePot = 34.25955853		 eTot = 43.25245204		&#xD;
140741		a = 1.20823365		 v = 1.13346982		 x = 1.44178201		 eKin = 8.99308517		 ePot = 34.25936684		 eTot = 43.25245201		&#xD;
140742		a = 1.20865776		 v = 1.13348191		 x = 1.44179318		 eKin = 8.99327690		 ePot = 34.25917507		 eTot = 43.25245197		&#xD;
140743		a = 1.20908104		 v = 1.13349400		 x = 1.44180434		 eKin = 8.99346870		 ePot = 34.25898324		 eTot = 43.25245194		&#xD;
140744		a = 1.20950348		 v = 1.13350610		 x = 1.44181551		 eKin = 8.99366057		 ePot = 34.25879134		 eTot = 43.25245190		&#xD;
140745		a = 1.20992509		 v = 1.13351820		 x = 1.44182667		 eKin = 8.99385250		 ePot = 34.25859936		 eTot = 43.25245187		&#xD;
140746		a = 1.21034587		 v = 1.13353030		 x = 1.44183784		 eKin = 8.99404451		 ePot = 34.25840732		 eTot = 43.25245183		&#xD;
140747		a = 1.21076582		 v = 1.13354241		 x = 1.44184900		 eKin = 8.99423658		 ePot = 34.25821521		 eTot = 43.25245180		&#xD;
140748		a = 1.21118493		 v = 1.13355452		 x = 1.44186017		 eKin = 8.99442872		 ePot = 34.25802304		 eTot = 43.25245176		&#xD;
140749		a = 1.21160321		 v = 1.13356664		 x = 1.44187133		 eKin = 8.99462093		 ePot = 34.25783079		 eTot = 43.25245173		&#xD;
140750		a = 1.21202066		 v = 1.13357876		 x = 1.44188250		 eKin = 8.99481321		 ePot = 34.25763848		 eTot = 43.25245169		&#xD;
140751		a = 1.21243728		 v = 1.13359088		 x = 1.44189366		 eKin = 8.99500556		 ePot = 34.25744609		 eTot = 43.25245165		&#xD;
140752		a = 1.21285307		 v = 1.13360301		 x = 1.44190483		 eKin = 8.99519798		 ePot = 34.25725364		 eTot = 43.25245162		&#xD;
140753		a = 1.21326802		 v = 1.13361514		 x = 1.44191599		 eKin = 8.99539046		 ePot = 34.25706112		 eTot = 43.25245158		&#xD;
140754		a = 1.21368214		 v = 1.13362728		 x = 1.44192716		 eKin = 8.99558301		 ePot = 34.25686854		 eTot = 43.25245155		&#xD;
140755		a = 1.21409543		 v = 1.13363942		 x = 1.44193832		 eKin = 8.99577563		 ePot = 34.25667588		 eTot = 43.25245152		&#xD;
140756		a = 1.21450789		 v = 1.13365156		 x = 1.44194949		 eKin = 8.99596832		 ePot = 34.25648316		 eTot = 43.25245148		&#xD;
140757		a = 1.21491952		 v = 1.13366371		 x = 1.44196065		 eKin = 8.99616108		 ePot = 34.25629037		 eTot = 43.25245145		&#xD;
140758		a = 1.21533032		 v = 1.13367587		 x = 1.44197182		 eKin = 8.99635390		 ePot = 34.25609751		 eTot = 43.25245141		&#xD;
140759		a = 1.21574028		 v = 1.13368802		 x = 1.44198298		 eKin = 8.99654679		 ePot = 34.25590459		 eTot = 43.25245138		&#xD;
140760		a = 1.21614941		 v = 1.13370019		 x = 1.44199415		 eKin = 8.99673975		 ePot = 34.25571160		 eTot = 43.25245134		&#xD;
140761		a = 1.21655772		 v = 1.13371235		 x = 1.44200531		 eKin = 8.99693277		 ePot = 34.25551854		 eTot = 43.25245131		&#xD;
140762		a = 1.21696519		 v = 1.13372452		 x = 1.44201648		 eKin = 8.99712586		 ePot = 34.25532541		 eTot = 43.25245127		&#xD;
140763		a = 1.21737183		 v = 1.13373669		 x = 1.44202764		 eKin = 8.99731902		 ePot = 34.25513222		 eTot = 43.25245124		&#xD;
140764		a = 1.21777763		 v = 1.13374887		 x = 1.44203881		 eKin = 8.99751224		 ePot = 34.25493896		 eTot = 43.25245120		&#xD;
140765		a = 1.21818261		 v = 1.13376105		 x = 1.44204997		 eKin = 8.99770553		 ePot = 34.25474564		 eTot = 43.25245117		&#xD;
140766		a = 1.21858676		 v = 1.13377324		 x = 1.44206114		 eKin = 8.99789889		 ePot = 34.25455225		 eTot = 43.25245114		&#xD;
140767		a = 1.21899008		 v = 1.13378543		 x = 1.44207230		 eKin = 8.99809231		 ePot = 34.25435879		 eTot = 43.25245110		&#xD;
140768		a = 1.21939256		 v = 1.13379762		 x = 1.44208347		 eKin = 8.99828580		 ePot = 34.25416527		 eTot = 43.25245107		&#xD;
140769		a = 1.21979422		 v = 1.13380982		 x = 1.44209463		 eKin = 8.99847936		 ePot = 34.25397168		 eTot = 43.25245103		&#xD;
140770		a = 1.22019504		 v = 1.13382202		 x = 1.44210580		 eKin = 8.99867298		 ePot = 34.25377802		 eTot = 43.25245100		&#xD;
140771		a = 1.22059504		 v = 1.13383423		 x = 1.44211696		 eKin = 8.99886666		 ePot = 34.25358430		 eTot = 43.25245097		&#xD;
140772		a = 1.22099420		 v = 1.13384644		 x = 1.44212813		 eKin = 8.99906042		 ePot = 34.25339052		 eTot = 43.25245093		&#xD;
140773		a = 1.22139253		 v = 1.13385865		 x = 1.44213929		 eKin = 8.99925423		 ePot = 34.25319666		 eTot = 43.25245090		&#xD;
140774		a = 1.22179004		 v = 1.13387087		 x = 1.44215046		 eKin = 8.99944812		 ePot = 34.25300275		 eTot = 43.25245087		&#xD;
140775		a = 1.22218671		 v = 1.13388309		 x = 1.44216162		 eKin = 8.99964207		 ePot = 34.25280877		 eTot = 43.25245083		&#xD;
140776		a = 1.22258255		 v = 1.13389532		 x = 1.44217279		 eKin = 8.99983608		 ePot = 34.25261472		 eTot = 43.25245080		&#xD;
140777		a = 1.22297757		 v = 1.13390755		 x = 1.44218395		 eKin = 9.00003016		 ePot = 34.25242061		 eTot = 43.25245077		&#xD;
140778		a = 1.22337175		 v = 1.13391978		 x = 1.44219512		 eKin = 9.00022430		 ePot = 34.25222643		 eTot = 43.25245073		&#xD;
140779		a = 1.22376510		 v = 1.13393202		 x = 1.44220628		 eKin = 9.00041851		 ePot = 34.25203219		 eTot = 43.25245070		&#xD;
140780		a = 1.22415763		 v = 1.13394426		 x = 1.44221745		 eKin = 9.00061278		 ePot = 34.25183788		 eTot = 43.25245067		&#xD;
140781		a = 1.22454932		 v = 1.13395651		 x = 1.44222861		 eKin = 9.00080712		 ePot = 34.25164352		 eTot = 43.25245063		&#xD;
140782		a = 1.22494019		 v = 1.13396876		 x = 1.44223978		 eKin = 9.00100152		 ePot = 34.25144908		 eTot = 43.25245060		&#xD;
140783		a = 1.22533022		 v = 1.13398101		 x = 1.44225094		 eKin = 9.00119598		 ePot = 34.25125458		 eTot = 43.25245057		&#xD;
140784		a = 1.22571943		 v = 1.13399327		 x = 1.44226211		 eKin = 9.00139051		 ePot = 34.25106002		 eTot = 43.25245053		&#xD;
140785		a = 1.22610780		 v = 1.13400553		 x = 1.44227327		 eKin = 9.00158511		 ePot = 34.25086540		 eTot = 43.25245050		&#xD;
140786		a = 1.22649535		 v = 1.13401779		 x = 1.44228444		 eKin = 9.00177976		 ePot = 34.25067071		 eTot = 43.25245047		&#xD;
140787		a = 1.22688207		 v = 1.13403006		 x = 1.44229560		 eKin = 9.00197448		 ePot = 34.25047595		 eTot = 43.25245043		&#xD;
140788		a = 1.22726796		 v = 1.13404233		 x = 1.44230677		 eKin = 9.00216927		 ePot = 34.25028114		 eTot = 43.25245040		&#xD;
140789		a = 1.22765302		 v = 1.13405461		 x = 1.44231793		 eKin = 9.00236411		 ePot = 34.25008626		 eTot = 43.25245037		&#xD;
140790		a = 1.22803725		 v = 1.13406689		 x = 1.44232910		 eKin = 9.00255902		 ePot = 34.24989131		 eTot = 43.25245034		&#xD;
140791		a = 1.22842065		 v = 1.13407918		 x = 1.44234026		 eKin = 9.00275400		 ePot = 34.24969631		 eTot = 43.25245030		&#xD;
140792		a = 1.22880322		 v = 1.13409146		 x = 1.44235143		 eKin = 9.00294903		 ePot = 34.24950124		 eTot = 43.25245027		&#xD;
140793		a = 1.22918497		 v = 1.13410376		 x = 1.44236259		 eKin = 9.00314413		 ePot = 34.24930611		 eTot = 43.25245024		&#xD;
140794		a = 1.22956588		 v = 1.13411605		 x = 1.44237376		 eKin = 9.00333930		 ePot = 34.24911091		 eTot = 43.25245021		&#xD;
140795		a = 1.22994597		 v = 1.13412835		 x = 1.44238492		 eKin = 9.00353452		 ePot = 34.24891565		 eTot = 43.25245018		&#xD;
140796		a = 1.23032523		 v = 1.13414065		 x = 1.44239609		 eKin = 9.00372981		 ePot = 34.24872034		 eTot = 43.25245014		&#xD;
140797		a = 1.23070366		 v = 1.13415296		 x = 1.44240725		 eKin = 9.00392516		 ePot = 34.24852495		 eTot = 43.25245011		&#xD;
140798		a = 1.23108126		 v = 1.13416527		 x = 1.44241842		 eKin = 9.00412057		 ePot = 34.24832951		 eTot = 43.25245008		&#xD;
140799		a = 1.23145803		 v = 1.13417759		 x = 1.44242958		 eKin = 9.00431604		 ePot = 34.24813400		 eTot = 43.25245005		&#xD;
140800		a = 1.23183398		 v = 1.13418990		 x = 1.44244075		 eKin = 9.00451158		 ePot = 34.24793844		 eTot = 43.25245002		&#xD;
140801		a = 1.23220910		 v = 1.13420223		 x = 1.44245191		 eKin = 9.00470718		 ePot = 34.24774281		 eTot = 43.25244998		&#xD;
140802		a = 1.23258339		 v = 1.13421455		 x = 1.44246308		 eKin = 9.00490284		 ePot = 34.24754712		 eTot = 43.25244995		&#xD;
140803		a = 1.23295685		 v = 1.13422688		 x = 1.44247425		 eKin = 9.00509856		 ePot = 34.24735136		 eTot = 43.25244992		&#xD;
140804		a = 1.23332948		 v = 1.13423922		 x = 1.44248541		 eKin = 9.00529434		 ePot = 34.24715555		 eTot = 43.25244989		&#xD;
140805		a = 1.23370129		 v = 1.13425155		 x = 1.44249658		 eKin = 9.00549018		 ePot = 34.24695967		 eTot = 43.25244986		&#xD;
140806		a = 1.23407226		 v = 1.13426389		 x = 1.44250774		 eKin = 9.00568609		 ePot = 34.24676374		 eTot = 43.25244983		&#xD;
140807		a = 1.23444241		 v = 1.13427624		 x = 1.44251891		 eKin = 9.00588205		 ePot = 34.24656774		 eTot = 43.25244979		&#xD;
140808		a = 1.23481174		 v = 1.13428859		 x = 1.44253007		 eKin = 9.00607808		 ePot = 34.24637168		 eTot = 43.25244976		&#xD;
140809		a = 1.23518023		 v = 1.13430094		 x = 1.44254124		 eKin = 9.00627417		 ePot = 34.24617556		 eTot = 43.25244973		&#xD;
140810		a = 1.23554790		 v = 1.13431329		 x = 1.44255240		 eKin = 9.00647032		 ePot = 34.24597938		 eTot = 43.25244970		&#xD;
140811		a = 1.23591474		 v = 1.13432565		 x = 1.44256357		 eKin = 9.00666652		 ePot = 34.24578314		 eTot = 43.25244967		&#xD;
140812		a = 1.23628075		 v = 1.13433801		 x = 1.44257473		 eKin = 9.00686279		 ePot = 34.24558684		 eTot = 43.25244964		&#xD;
140813		a = 1.23664594		 v = 1.13435038		 x = 1.44258590		 eKin = 9.00705912		 ePot = 34.24539048		 eTot = 43.25244961		&#xD;
140814		a = 1.23701030		 v = 1.13436275		 x = 1.44259706		 eKin = 9.00725551		 ePot = 34.24519406		 eTot = 43.25244958		&#xD;
140815		a = 1.23737383		 v = 1.13437513		 x = 1.44260823		 eKin = 9.00745196		 ePot = 34.24499758		 eTot = 43.25244955		&#xD;
140816		a = 1.23773653		 v = 1.13438750		 x = 1.44261940		 eKin = 9.00764847		 ePot = 34.24480104		 eTot = 43.25244951		&#xD;
140817		a = 1.23809841		 v = 1.13439988		 x = 1.44263056		 eKin = 9.00784504		 ePot = 34.24460444		 eTot = 43.25244948		&#xD;
140818		a = 1.23845946		 v = 1.13441227		 x = 1.44264173		 eKin = 9.00804167		 ePot = 34.24440778		 eTot = 43.25244945		&#xD;
140819		a = 1.23881968		 v = 1.13442466		 x = 1.44265289		 eKin = 9.00823836		 ePot = 34.24421106		 eTot = 43.25244942		&#xD;
140820		a = 1.23917908		 v = 1.13443705		 x = 1.44266406		 eKin = 9.00843511		 ePot = 34.24401429		 eTot = 43.25244939		&#xD;
140821		a = 1.23953765		 v = 1.13444944		 x = 1.44267522		 eKin = 9.00863191		 ePot = 34.24381745		 eTot = 43.25244936		&#xD;
140822		a = 1.23989539		 v = 1.13446184		 x = 1.44268639		 eKin = 9.00882878		 ePot = 34.24362055		 eTot = 43.25244933		&#xD;
140823		a = 1.24025231		 v = 1.13447424		 x = 1.44269755		 eKin = 9.00902570		 ePot = 34.24342360		 eTot = 43.25244930		&#xD;
140824		a = 1.24060840		 v = 1.13448665		 x = 1.44270872		 eKin = 9.00922269		 ePot = 34.24322658		 eTot = 43.25244927		&#xD;
140825		a = 1.24096366		 v = 1.13449906		 x = 1.44271989		 eKin = 9.00941973		 ePot = 34.24302951		 eTot = 43.25244924		&#xD;
140826		a = 1.24131810		 v = 1.13451147		 x = 1.44273105		 eKin = 9.00961683		 ePot = 34.24283238		 eTot = 43.25244921		&#xD;
140827		a = 1.24167171		 v = 1.13452389		 x = 1.44274222		 eKin = 9.00981399		 ePot = 34.24263519		 eTot = 43.25244918		&#xD;
140828		a = 1.24202450		 v = 1.13453631		 x = 1.44275338		 eKin = 9.01001121		 ePot = 34.24243794		 eTot = 43.25244915		&#xD;
140829		a = 1.24237646		 v = 1.13454873		 x = 1.44276455		 eKin = 9.01020848		 ePot = 34.24224064		 eTot = 43.25244912		&#xD;
140830		a = 1.24272759		 v = 1.13456116		 x = 1.44277571		 eKin = 9.01040582		 ePot = 34.24204327		 eTot = 43.25244909		&#xD;
140831		a = 1.24307790		 v = 1.13457359		 x = 1.44278688		 eKin = 9.01060321		 ePot = 34.24184585		 eTot = 43.25244906		&#xD;
140832		a = 1.24342738		 v = 1.13458603		 x = 1.44279805		 eKin = 9.01080066		 ePot = 34.24164837		 eTot = 43.25244903		&#xD;
140833		a = 1.24377603		 v = 1.13459846		 x = 1.44280921		 eKin = 9.01099817		 ePot = 34.24145083		 eTot = 43.25244900		&#xD;
140834		a = 1.24412386		 v = 1.13461091		 x = 1.44282038		 eKin = 9.01119573		 ePot = 34.24125324		 eTot = 43.25244897		&#xD;
140835		a = 1.24447087		 v = 1.13462335		 x = 1.44283154		 eKin = 9.01139335		 ePot = 34.24105559		 eTot = 43.25244894		&#xD;
140836		a = 1.24481705		 v = 1.13463580		 x = 1.44284271		 eKin = 9.01159103		 ePot = 34.24085788		 eTot = 43.25244891		&#xD;
140837		a = 1.24516240		 v = 1.13464825		 x = 1.44285388		 eKin = 9.01178877		 ePot = 34.24066011		 eTot = 43.25244888		&#xD;
140838		a = 1.24550692		 v = 1.13466071		 x = 1.44286504		 eKin = 9.01198656		 ePot = 34.24046229		 eTot = 43.25244885		&#xD;
140839		a = 1.24585063		 v = 1.13467316		 x = 1.44287621		 eKin = 9.01218442		 ePot = 34.24026441		 eTot = 43.25244882		&#xD;
140840		a = 1.24619350		 v = 1.13468563		 x = 1.44288737		 eKin = 9.01238232		 ePot = 34.24006647		 eTot = 43.25244879		&#xD;
140841		a = 1.24653555		 v = 1.13469809		 x = 1.44289854		 eKin = 9.01258029		 ePot = 34.23986848		 eTot = 43.25244877		&#xD;
140842		a = 1.24687678		 v = 1.13471056		 x = 1.44290971		 eKin = 9.01277831		 ePot = 34.23967043		 eTot = 43.25244874		&#xD;
140843		a = 1.24721718		 v = 1.13472303		 x = 1.44292087		 eKin = 9.01297638		 ePot = 34.23947232		 eTot = 43.25244871		&#xD;
140844		a = 1.24755675		 v = 1.13473551		 x = 1.44293204		 eKin = 9.01317452		 ePot = 34.23927416		 eTot = 43.25244868		&#xD;
140845		a = 1.24789550		 v = 1.13474799		 x = 1.44294320		 eKin = 9.01337271		 ePot = 34.23907594		 eTot = 43.25244865		&#xD;
140846		a = 1.24823343		 v = 1.13476047		 x = 1.44295437		 eKin = 9.01357095		 ePot = 34.23887767		 eTot = 43.25244862		&#xD;
140847		a = 1.24857053		 v = 1.13477295		 x = 1.44296554		 eKin = 9.01376925		 ePot = 34.23867934		 eTot = 43.25244859		&#xD;
140848		a = 1.24890680		 v = 1.13478544		 x = 1.44297670		 eKin = 9.01396761		 ePot = 34.23848095		 eTot = 43.25244856		&#xD;
140849		a = 1.24924226		 v = 1.13479794		 x = 1.44298787		 eKin = 9.01416602		 ePot = 34.23828251		 eTot = 43.25244853		&#xD;
140850		a = 1.24957688		 v = 1.13481043		 x = 1.44299903		 eKin = 9.01436449		 ePot = 34.23808401		 eTot = 43.25244851		&#xD;
140851		a = 1.24991068		 v = 1.13482293		 x = 1.44301020		 eKin = 9.01456302		 ePot = 34.23788546		 eTot = 43.25244848		&#xD;
140852		a = 1.25024366		 v = 1.13483543		 x = 1.44302137		 eKin = 9.01476159		 ePot = 34.23768685		 eTot = 43.25244845		&#xD;
140853		a = 1.25057581		 v = 1.13484794		 x = 1.44303253		 eKin = 9.01496023		 ePot = 34.23748819		 eTot = 43.25244842		&#xD;
140854		a = 1.25090714		 v = 1.13486045		 x = 1.44304370		 eKin = 9.01515892		 ePot = 34.23728948		 eTot = 43.25244839		&#xD;
140855		a = 1.25123764		 v = 1.13487296		 x = 1.44305487		 eKin = 9.01535766		 ePot = 34.23709070		 eTot = 43.25244836		&#xD;
140856		a = 1.25156732		 v = 1.13488548		 x = 1.44306603		 eKin = 9.01555646		 ePot = 34.23689188		 eTot = 43.25244834		&#xD;
140857		a = 1.25189617		 v = 1.13489800		 x = 1.44307720		 eKin = 9.01575531		 ePot = 34.23669300		 eTot = 43.25244831		&#xD;
140858		a = 1.25222420		 v = 1.13491052		 x = 1.44308836		 eKin = 9.01595422		 ePot = 34.23649406		 eTot = 43.25244828		&#xD;
140859		a = 1.25255141		 v = 1.13492304		 x = 1.44309953		 eKin = 9.01615318		 ePot = 34.23629507		 eTot = 43.25244825		&#xD;
140860		a = 1.25287779		 v = 1.13493557		 x = 1.44311070		 eKin = 9.01635220		 ePot = 34.23609603		 eTot = 43.25244822		&#xD;
140861		a = 1.25320335		 v = 1.13494810		 x = 1.44312186		 eKin = 9.01655127		 ePot = 34.23589693		 eTot = 43.25244820		&#xD;
140862		a = 1.25352808		 v = 1.13496064		 x = 1.44313303		 eKin = 9.01675039		 ePot = 34.23569778		 eTot = 43.25244817		&#xD;
140863		a = 1.25385199		 v = 1.13497318		 x = 1.44314420		 eKin = 9.01694957		 ePot = 34.23549857		 eTot = 43.25244814		&#xD;
140864		a = 1.25417508		 v = 1.13498572		 x = 1.44315536		 eKin = 9.01714880		 ePot = 34.23529931		 eTot = 43.25244811		&#xD;
140865		a = 1.25449734		 v = 1.13499826		 x = 1.44316653		 eKin = 9.01734808		 ePot = 34.23510000		 eTot = 43.25244809		&#xD;
140866		a = 1.25481878		 v = 1.13501081		 x = 1.44317770		 eKin = 9.01754742		 ePot = 34.23490064		 eTot = 43.25244806		&#xD;
140867		a = 1.25513940		 v = 1.13502336		 x = 1.44318886		 eKin = 9.01774681		 ePot = 34.23470122		 eTot = 43.25244803		&#xD;
140868		a = 1.25545919		 v = 1.13503592		 x = 1.44320003		 eKin = 9.01794626		 ePot = 34.23450174		 eTot = 43.25244800		&#xD;
140869		a = 1.25577816		 v = 1.13504848		 x = 1.44321120		 eKin = 9.01814576		 ePot = 34.23430222		 eTot = 43.25244798		&#xD;
140870		a = 1.25609630		 v = 1.13506104		 x = 1.44322236		 eKin = 9.01834531		 ePot = 34.23410264		 eTot = 43.25244795		&#xD;
140871		a = 1.25641362		 v = 1.13507360		 x = 1.44323353		 eKin = 9.01854491		 ePot = 34.23390301		 eTot = 43.25244792		&#xD;
140872		a = 1.25673012		 v = 1.13508617		 x = 1.44324470		 eKin = 9.01874457		 ePot = 34.23370333		 eTot = 43.25244789		&#xD;
140873		a = 1.25704579		 v = 1.13509874		 x = 1.44325586		 eKin = 9.01894427		 ePot = 34.23350359		 eTot = 43.25244787		&#xD;
140874		a = 1.25736064		 v = 1.13511131		 x = 1.44326703		 eKin = 9.01914404		 ePot = 34.23330380		 eTot = 43.25244784		&#xD;
140875		a = 1.25767467		 v = 1.13512389		 x = 1.44327820		 eKin = 9.01934385		 ePot = 34.23310396		 eTot = 43.25244781		&#xD;
140876		a = 1.25798788		 v = 1.13513647		 x = 1.44328937		 eKin = 9.01954371		 ePot = 34.23290407		 eTot = 43.25244779		&#xD;
140877		a = 1.25830026		 v = 1.13514905		 x = 1.44330053		 eKin = 9.01974363		 ePot = 34.23270413		 eTot = 43.25244776		&#xD;
140878		a = 1.25861182		 v = 1.13516164		 x = 1.44331170		 eKin = 9.01994360		 ePot = 34.23250413		 eTot = 43.25244773		&#xD;
140879		a = 1.25892255		 v = 1.13517423		 x = 1.44332287		 eKin = 9.02014362		 ePot = 34.23230409		 eTot = 43.25244771		&#xD;
140880		a = 1.25923247		 v = 1.13518682		 x = 1.44333403		 eKin = 9.02034369		 ePot = 34.23210399		 eTot = 43.25244768		&#xD;
140881		a = 1.25954156		 v = 1.13519942		 x = 1.44334520		 eKin = 9.02054382		 ePot = 34.23190384		 eTot = 43.25244765		&#xD;
140882		a = 1.25984982		 v = 1.13521201		 x = 1.44335637		 eKin = 9.02074399		 ePot = 34.23170363		 eTot = 43.25244763		&#xD;
140883		a = 1.26015727		 v = 1.13522462		 x = 1.44336753		 eKin = 9.02094422		 ePot = 34.23150338		 eTot = 43.25244760		&#xD;
140884		a = 1.26046389		 v = 1.13523722		 x = 1.44337870		 eKin = 9.02114450		 ePot = 34.23130308		 eTot = 43.25244757		&#xD;
140885		a = 1.26076969		 v = 1.13524983		 x = 1.44338987		 eKin = 9.02134482		 ePot = 34.23110272		 eTot = 43.25244755		&#xD;
140886		a = 1.26107467		 v = 1.13526244		 x = 1.44340104		 eKin = 9.02154520		 ePot = 34.23090232		 eTot = 43.25244752		&#xD;
140887		a = 1.26137882		 v = 1.13527505		 x = 1.44341220		 eKin = 9.02174563		 ePot = 34.23070186		 eTot = 43.25244750		&#xD;
140888		a = 1.26168215		 v = 1.13528767		 x = 1.44342337		 eKin = 9.02194611		 ePot = 34.23050136		 eTot = 43.25244747		&#xD;
140889		a = 1.26198466		 v = 1.13530029		 x = 1.44343454		 eKin = 9.02214665		 ePot = 34.23030080		 eTot = 43.25244744		&#xD;
140890		a = 1.26228635		 v = 1.13531291		 x = 1.44344571		 eKin = 9.02234723		 ePot = 34.23010019		 eTot = 43.25244742		&#xD;
140891		a = 1.26258721		 v = 1.13532554		 x = 1.44345687		 eKin = 9.02254786		 ePot = 34.22989953		 eTot = 43.25244739		&#xD;
140892		a = 1.26288726		 v = 1.13533817		 x = 1.44346804		 eKin = 9.02274854		 ePot = 34.22969883		 eTot = 43.25244737		&#xD;
140893		a = 1.26318648		 v = 1.13535080		 x = 1.44347921		 eKin = 9.02294927		 ePot = 34.22949807		 eTot = 43.25244734		&#xD;
140894		a = 1.26348488		 v = 1.13536343		 x = 1.44349038		 eKin = 9.02315005		 ePot = 34.22929726		 eTot = 43.25244732		&#xD;
140895		a = 1.26378245		 v = 1.13537607		 x = 1.44350154		 eKin = 9.02335088		 ePot = 34.22909641		 eTot = 43.25244729		&#xD;
140896		a = 1.26407921		 v = 1.13538871		 x = 1.44351271		 eKin = 9.02355176		 ePot = 34.22889550		 eTot = 43.25244726		&#xD;
140897		a = 1.26437514		 v = 1.13540136		 x = 1.44352388		 eKin = 9.02375269		 ePot = 34.22869454		 eTot = 43.25244724		&#xD;
140898		a = 1.26467025		 v = 1.13541400		 x = 1.44353505		 eKin = 9.02395367		 ePot = 34.22849354		 eTot = 43.25244721		&#xD;
140899		a = 1.26496454		 v = 1.13542665		 x = 1.44354621		 eKin = 9.02415470		 ePot = 34.22829249		 eTot = 43.25244719		&#xD;
140900		a = 1.26525801		 v = 1.13543930		 x = 1.44355738		 eKin = 9.02435578		 ePot = 34.22809138		 eTot = 43.25244716		&#xD;
140901		a = 1.26555065		 v = 1.13545196		 x = 1.44356855		 eKin = 9.02455690		 ePot = 34.22789023		 eTot = 43.25244714		&#xD;
140902		a = 1.26584248		 v = 1.13546462		 x = 1.44357972		 eKin = 9.02475808		 ePot = 34.22768903		 eTot = 43.25244711		&#xD;
140903		a = 1.26613348		 v = 1.13547728		 x = 1.44359088		 eKin = 9.02495930		 ePot = 34.22748778		 eTot = 43.25244709		&#xD;
140904		a = 1.26642366		 v = 1.13548994		 x = 1.44360205		 eKin = 9.02516058		 ePot = 34.22728649		 eTot = 43.25244706		&#xD;
140905		a = 1.26671302		 v = 1.13550261		 x = 1.44361322		 eKin = 9.02536190		 ePot = 34.22708514		 eTot = 43.25244704		&#xD;
140906		a = 1.26700156		 v = 1.13551528		 x = 1.44362439		 eKin = 9.02556326		 ePot = 34.22688375		 eTot = 43.25244701		&#xD;
140907		a = 1.26728927		 v = 1.13552795		 x = 1.44363556		 eKin = 9.02576468		 ePot = 34.22668231		 eTot = 43.25244699		&#xD;
140908		a = 1.26757617		 v = 1.13554063		 x = 1.44364672		 eKin = 9.02596615		 ePot = 34.22648082		 eTot = 43.25244696		&#xD;
140909		a = 1.26786224		 v = 1.13555331		 x = 1.44365789		 eKin = 9.02616766		 ePot = 34.22627928		 eTot = 43.25244694		&#xD;
140910		a = 1.26814749		 v = 1.13556599		 x = 1.44366906		 eKin = 9.02636922		 ePot = 34.22607769		 eTot = 43.25244691		&#xD;
140911		a = 1.26843193		 v = 1.13557867		 x = 1.44368023		 eKin = 9.02657083		 ePot = 34.22587606		 eTot = 43.25244689		&#xD;
140912		a = 1.26871554		 v = 1.13559136		 x = 1.44369140		 eKin = 9.02677248		 ePot = 34.22567438		 eTot = 43.25244687		&#xD;
140913		a = 1.26899833		 v = 1.13560405		 x = 1.44370257		 eKin = 9.02697419		 ePot = 34.22547266		 eTot = 43.25244684		&#xD;
140914		a = 1.26928029		 v = 1.13561674		 x = 1.44371373		 eKin = 9.02717594		 ePot = 34.22527088		 eTot = 43.25244682		&#xD;
140915		a = 1.26956144		 v = 1.13562944		 x = 1.44372490		 eKin = 9.02737773		 ePot = 34.22506906		 eTot = 43.25244679		&#xD;
140916		a = 1.26984177		 v = 1.13564214		 x = 1.44373607		 eKin = 9.02757958		 ePot = 34.22486719		 eTot = 43.25244677		&#xD;
140917		a = 1.27012127		 v = 1.13565484		 x = 1.44374724		 eKin = 9.02778147		 ePot = 34.22466528		 eTot = 43.25244674		&#xD;
140918		a = 1.27039996		 v = 1.13566754		 x = 1.44375841		 eKin = 9.02798341		 ePot = 34.22446331		 eTot = 43.25244672		&#xD;
140919		a = 1.27067782		 v = 1.13568025		 x = 1.44376958		 eKin = 9.02818539		 ePot = 34.22426131		 eTot = 43.25244670		&#xD;
140920		a = 1.27095486		 v = 1.13569296		 x = 1.44378074		 eKin = 9.02838742		 ePot = 34.22405925		 eTot = 43.25244667		&#xD;
140921		a = 1.27123109		 v = 1.13570567		 x = 1.44379191		 eKin = 9.02858950		 ePot = 34.22385715		 eTot = 43.25244665		&#xD;
140922		a = 1.27150649		 v = 1.13571839		 x = 1.44380308		 eKin = 9.02879162		 ePot = 34.22365500		 eTot = 43.25244662		&#xD;
140923		a = 1.27178107		 v = 1.13573111		 x = 1.44381425		 eKin = 9.02899379		 ePot = 34.22345281		 eTot = 43.25244660		&#xD;
140924		a = 1.27205483		 v = 1.13574383		 x = 1.44382542		 eKin = 9.02919600		 ePot = 34.22325057		 eTot = 43.25244658		&#xD;
140925		a = 1.27232777		 v = 1.13575655		 x = 1.44383659		 eKin = 9.02939827		 ePot = 34.22304829		 eTot = 43.25244655		&#xD;
140926		a = 1.27259989		 v = 1.13576928		 x = 1.44384776		 eKin = 9.02960057		 ePot = 34.22284596		 eTot = 43.25244653		&#xD;
140927		a = 1.27287119		 v = 1.13578200		 x = 1.44385893		 eKin = 9.02980292		 ePot = 34.22264358		 eTot = 43.25244651		&#xD;
140928		a = 1.27314167		 v = 1.13579474		 x = 1.44387009		 eKin = 9.03000532		 ePot = 34.22244116		 eTot = 43.25244648		&#xD;
140929		a = 1.27341133		 v = 1.13580747		 x = 1.44388126		 eKin = 9.03020776		 ePot = 34.22223870		 eTot = 43.25244646		&#xD;
140930		a = 1.27368017		 v = 1.13582021		 x = 1.44389243		 eKin = 9.03041025		 ePot = 34.22203618		 eTot = 43.25244644		&#xD;
140931		a = 1.27394819		 v = 1.13583295		 x = 1.44390360		 eKin = 9.03061278		 ePot = 34.22183363		 eTot = 43.25244641		&#xD;
140932		a = 1.27421539		 v = 1.13584569		 x = 1.44391477		 eKin = 9.03081536		 ePot = 34.22163103		 eTot = 43.25244639		&#xD;
140933		a = 1.27448177		 v = 1.13585843		 x = 1.44392594		 eKin = 9.03101798		 ePot = 34.22142838		 eTot = 43.25244637		&#xD;
140934		a = 1.27474732		 v = 1.13587118		 x = 1.44393711		 eKin = 9.03122065		 ePot = 34.22122569		 eTot = 43.25244634		&#xD;
140935		a = 1.27501206		 v = 1.13588393		 x = 1.44394828		 eKin = 9.03142336		 ePot = 34.22102296		 eTot = 43.25244632		&#xD;
140936		a = 1.27527598		 v = 1.13589668		 x = 1.44395945		 eKin = 9.03162612		 ePot = 34.22082018		 eTot = 43.25244630		&#xD;
140937		a = 1.27553908		 v = 1.13590944		 x = 1.44397062		 eKin = 9.03182892		 ePot = 34.22061736		 eTot = 43.25244628		&#xD;
140938		a = 1.27580136		 v = 1.13592220		 x = 1.44398179		 eKin = 9.03203176		 ePot = 34.22041449		 eTot = 43.25244625		&#xD;
140939		a = 1.27606282		 v = 1.13593496		 x = 1.44399296		 eKin = 9.03223465		 ePot = 34.22021158		 eTot = 43.25244623		&#xD;
140940		a = 1.27632346		 v = 1.13594772		 x = 1.44400413		 eKin = 9.03243759		 ePot = 34.22000862		 eTot = 43.25244621		&#xD;
140941		a = 1.27658328		 v = 1.13596049		 x = 1.44401529		 eKin = 9.03264056		 ePot = 34.21980562		 eTot = 43.25244618		&#xD;
140942		a = 1.27684228		 v = 1.13597325		 x = 1.44402646		 eKin = 9.03284358		 ePot = 34.21960258		 eTot = 43.25244616		&#xD;
140943		a = 1.27710046		 v = 1.13598603		 x = 1.44403763		 eKin = 9.03304664		 ePot = 34.21939950		 eTot = 43.25244614		&#xD;
140944		a = 1.27735782		 v = 1.13599880		 x = 1.44404880		 eKin = 9.03324975		 ePot = 34.21919637		 eTot = 43.25244612		&#xD;
140945		a = 1.27761436		 v = 1.13601158		 x = 1.44405997		 eKin = 9.03345290		 ePot = 34.21899320		 eTot = 43.25244610		&#xD;
140946		a = 1.27787008		 v = 1.13602435		 x = 1.44407114		 eKin = 9.03365609		 ePot = 34.21878998		 eTot = 43.25244607		&#xD;
140947		a = 1.27812498		 v = 1.13603714		 x = 1.44408231		 eKin = 9.03385933		 ePot = 34.21858672		 eTot = 43.25244605		&#xD;
140948		a = 1.27837907		 v = 1.13604992		 x = 1.44409348		 eKin = 9.03406261		 ePot = 34.21838342		 eTot = 43.25244603		&#xD;
140949		a = 1.27863233		 v = 1.13606271		 x = 1.44410465		 eKin = 9.03426593		 ePot = 34.21818008		 eTot = 43.25244601		&#xD;
140950		a = 1.27888478		 v = 1.13607549		 x = 1.44411582		 eKin = 9.03446929		 ePot = 34.21797669		 eTot = 43.25244599		&#xD;
140951		a = 1.27913640		 v = 1.13608829		 x = 1.44412699		 eKin = 9.03467270		 ePot = 34.21777327		 eTot = 43.25244596		&#xD;
140952		a = 1.27938721		 v = 1.13610108		 x = 1.44413816		 eKin = 9.03487615		 ePot = 34.21756980		 eTot = 43.25244594		&#xD;
140953		a = 1.27963719		 v = 1.13611388		 x = 1.44414933		 eKin = 9.03507964		 ePot = 34.21736628		 eTot = 43.25244592		&#xD;
140954		a = 1.27988636		 v = 1.13612667		 x = 1.44416050		 eKin = 9.03528317		 ePot = 34.21716273		 eTot = 43.25244590		&#xD;
140955		a = 1.28013471		 v = 1.13613948		 x = 1.44417167		 eKin = 9.03548674		 ePot = 34.21695913		 eTot = 43.25244588		&#xD;
140956		a = 1.28038224		 v = 1.13615228		 x = 1.44418284		 eKin = 9.03569036		 ePot = 34.21675549		 eTot = 43.25244586		&#xD;
140957		a = 1.28062895		 v = 1.13616509		 x = 1.44419401		 eKin = 9.03589402		 ePot = 34.21655181		 eTot = 43.25244583		&#xD;
140958		a = 1.28087484		 v = 1.13617789		 x = 1.44420518		 eKin = 9.03609772		 ePot = 34.21634809		 eTot = 43.25244581		&#xD;
140959		a = 1.28111991		 v = 1.13619071		 x = 1.44421635		 eKin = 9.03630146		 ePot = 34.21614433		 eTot = 43.25244579		&#xD;
140960		a = 1.28136417		 v = 1.13620352		 x = 1.44422752		 eKin = 9.03650524		 ePot = 34.21594053		 eTot = 43.25244577		&#xD;
140961		a = 1.28160760		 v = 1.13621634		 x = 1.44423869		 eKin = 9.03670907		 ePot = 34.21573668		 eTot = 43.25244575		&#xD;
140962		a = 1.28185022		 v = 1.13622915		 x = 1.44424987		 eKin = 9.03691293		 ePot = 34.21553280		 eTot = 43.25244573		&#xD;
140963		a = 1.28209202		 v = 1.13624198		 x = 1.44426104		 eKin = 9.03711684		 ePot = 34.21532887		 eTot = 43.25244571		&#xD;
140964		a = 1.28233300		 v = 1.13625480		 x = 1.44427221		 eKin = 9.03732078		 ePot = 34.21512490		 eTot = 43.25244569		&#xD;
140965		a = 1.28257316		 v = 1.13626762		 x = 1.44428338		 eKin = 9.03752477		 ePot = 34.21492090		 eTot = 43.25244566		&#xD;
140966		a = 1.28281250		 v = 1.13628045		 x = 1.44429455		 eKin = 9.03772880		 ePot = 34.21471685		 eTot = 43.25244564		&#xD;
140967		a = 1.28305102		 v = 1.13629328		 x = 1.44430572		 eKin = 9.03793286		 ePot = 34.21451276		 eTot = 43.25244562		&#xD;
140968		a = 1.28328873		 v = 1.13630612		 x = 1.44431689		 eKin = 9.03813697		 ePot = 34.21430863		 eTot = 43.25244560		&#xD;
140969		a = 1.28352561		 v = 1.13631895		 x = 1.44432806		 eKin = 9.03834112		 ePot = 34.21410446		 eTot = 43.25244558		&#xD;
140970		a = 1.28376168		 v = 1.13633179		 x = 1.44433923		 eKin = 9.03854531		 ePot = 34.21390025		 eTot = 43.25244556		&#xD;
140971		a = 1.28399693		 v = 1.13634463		 x = 1.44435040		 eKin = 9.03874954		 ePot = 34.21369600		 eTot = 43.25244554		&#xD;
140972		a = 1.28423136		 v = 1.13635747		 x = 1.44436157		 eKin = 9.03895380		 ePot = 34.21349172		 eTot = 43.25244552		&#xD;
140973		a = 1.28446497		 v = 1.13637032		 x = 1.44437275		 eKin = 9.03915811		 ePot = 34.21328739		 eTot = 43.25244550		&#xD;
140974		a = 1.28469777		 v = 1.13638316		 x = 1.44438392		 eKin = 9.03936246		 ePot = 34.21308302		 eTot = 43.25244548		&#xD;
140975		a = 1.28492974		 v = 1.13639601		 x = 1.44439509		 eKin = 9.03956684		 ePot = 34.21287862		 eTot = 43.25244546		&#xD;
140976		a = 1.28516090		 v = 1.13640886		 x = 1.44440626		 eKin = 9.03977127		 ePot = 34.21267417		 eTot = 43.25244544		&#xD;
140977		a = 1.28539124		 v = 1.13642172		 x = 1.44441743		 eKin = 9.03997573		 ePot = 34.21246968		 eTot = 43.25244542		&#xD;
140978		a = 1.28562076		 v = 1.13643457		 x = 1.44442860		 eKin = 9.04018024		 ePot = 34.21226516		 eTot = 43.25244540		&#xD;
140979		a = 1.28584946		 v = 1.13644743		 x = 1.44443977		 eKin = 9.04038478		 ePot = 34.21206060		 eTot = 43.25244538		&#xD;
140980		a = 1.28607735		 v = 1.13646029		 x = 1.44445094		 eKin = 9.04058936		 ePot = 34.21185600		 eTot = 43.25244536		&#xD;
140981		a = 1.28630442		 v = 1.13647316		 x = 1.44446212		 eKin = 9.04079398		 ePot = 34.21165136		 eTot = 43.25244534		&#xD;
140982		a = 1.28653067		 v = 1.13648602		 x = 1.44447329		 eKin = 9.04099864		 ePot = 34.21144668		 eTot = 43.25244532		&#xD;
140983		a = 1.28675610		 v = 1.13649889		 x = 1.44448446		 eKin = 9.04120333		 ePot = 34.21124197		 eTot = 43.25244530		&#xD;
140984		a = 1.28698071		 v = 1.13651176		 x = 1.44449563		 eKin = 9.04140807		 ePot = 34.21103721		 eTot = 43.25244528		&#xD;
140985		a = 1.28720450		 v = 1.13652463		 x = 1.44450680		 eKin = 9.04161284		 ePot = 34.21083242		 eTot = 43.25244526		&#xD;
140986		a = 1.28742748		 v = 1.13653750		 x = 1.44451798		 eKin = 9.04181765		 ePot = 34.21062759		 eTot = 43.25244524		&#xD;
140987		a = 1.28764964		 v = 1.13655038		 x = 1.44452915		 eKin = 9.04202250		 ePot = 34.21042272		 eTot = 43.25244522		&#xD;
140988		a = 1.28787098		 v = 1.13656326		 x = 1.44454032		 eKin = 9.04222738		 ePot = 34.21021782		 eTot = 43.25244520		&#xD;
140989		a = 1.28809151		 v = 1.13657614		 x = 1.44455149		 eKin = 9.04243231		 ePot = 34.21001287		 eTot = 43.25244518		&#xD;
140990		a = 1.28831121		 v = 1.13658902		 x = 1.44456266		 eKin = 9.04263727		 ePot = 34.20980789		 eTot = 43.25244516		&#xD;
140991		a = 1.28853010		 v = 1.13660191		 x = 1.44457384		 eKin = 9.04284227		 ePot = 34.20960288		 eTot = 43.25244514		&#xD;
140992		a = 1.28874817		 v = 1.13661480		 x = 1.44458501		 eKin = 9.04304730		 ePot = 34.20939782		 eTot = 43.25244512		&#xD;
140993		a = 1.28896543		 v = 1.13662769		 x = 1.44459618		 eKin = 9.04325237		 ePot = 34.20919273		 eTot = 43.25244511		&#xD;
140994		a = 1.28918186		 v = 1.13664058		 x = 1.44460735		 eKin = 9.04345748		 ePot = 34.20898760		 eTot = 43.25244509		&#xD;
140995		a = 1.28939748		 v = 1.13665347		 x = 1.44461853		 eKin = 9.04366263		 ePot = 34.20878244		 eTot = 43.25244507		&#xD;
140996		a = 1.28961228		 v = 1.13666637		 x = 1.44462970		 eKin = 9.04386781		 ePot = 34.20857724		 eTot = 43.25244505		&#xD;
140997		a = 1.28982627		 v = 1.13667927		 x = 1.44464087		 eKin = 9.04407303		 ePot = 34.20837200		 eTot = 43.25244503		&#xD;
140998		a = 1.29003943		 v = 1.13669217		 x = 1.44465204		 eKin = 9.04427829		 ePot = 34.20816672		 eTot = 43.25244501		&#xD;
140999		a = 1.29025178		 v = 1.13670507		 x = 1.44466322		 eKin = 9.04448358		 ePot = 34.20796141		 eTot = 43.25244499		&#xD;
141000		a = 1.29046331		 v = 1.13671797		 x = 1.44467439		 eKin = 9.04468891		 ePot = 34.20775607		 eTot = 43.25244497		&#xD;
141001		a = 1.29067403		 v = 1.13673088		 x = 1.44468556		 eKin = 9.04489427		 ePot = 34.20755069		 eTot = 43.25244496		&#xD;
141002		a = 1.29088392		 v = 1.13674379		 x = 1.44469673		 eKin = 9.04509967		 ePot = 34.20734527		 eTot = 43.25244494		&#xD;
141003		a = 1.29109300		 v = 1.13675670		 x = 1.44470791		 eKin = 9.04530511		 ePot = 34.20713981		 eTot = 43.25244492		&#xD;
141004		a = 1.29130126		 v = 1.13676961		 x = 1.44471908		 eKin = 9.04551058		 ePot = 34.20693432		 eTot = 43.25244490		&#xD;
141005		a = 1.29150871		 v = 1.13678253		 x = 1.44473025		 eKin = 9.04571608		 ePot = 34.20672880		 eTot = 43.25244488		&#xD;
141006		a = 1.29171534		 v = 1.13679545		 x = 1.44474143		 eKin = 9.04592162		 ePot = 34.20652324		 eTot = 43.25244486		&#xD;
141007		a = 1.29192115		 v = 1.13680837		 x = 1.44475260		 eKin = 9.04612720		 ePot = 34.20631764		 eTot = 43.25244485		&#xD;
141008		a = 1.29212614		 v = 1.13682129		 x = 1.44476377		 eKin = 9.04633281		 ePot = 34.20611201		 eTot = 43.25244483		&#xD;
141009		a = 1.29233032		 v = 1.13683421		 x = 1.44477495		 eKin = 9.04653846		 ePot = 34.20590635		 eTot = 43.25244481		&#xD;
141010		a = 1.29253368		 v = 1.13684714		 x = 1.44478612		 eKin = 9.04674414		 ePot = 34.20570065		 eTot = 43.25244479		&#xD;
141011		a = 1.29273622		 v = 1.13686006		 x = 1.44479729		 eKin = 9.04694986		 ePot = 34.20549491		 eTot = 43.25244477		&#xD;
141012		a = 1.29293794		 v = 1.13687299		 x = 1.44480847		 eKin = 9.04715561		 ePot = 34.20528914		 eTot = 43.25244476		&#xD;
141013		a = 1.29313885		 v = 1.13688592		 x = 1.44481964		 eKin = 9.04736140		 ePot = 34.20508334		 eTot = 43.25244474		&#xD;
141014		a = 1.29333894		 v = 1.13689886		 x = 1.44483081		 eKin = 9.04756722		 ePot = 34.20487750		 eTot = 43.25244472		&#xD;
141015		a = 1.29353822		 v = 1.13691179		 x = 1.44484199		 eKin = 9.04777307		 ePot = 34.20467163		 eTot = 43.25244470		&#xD;
141016		a = 1.29373668		 v = 1.13692473		 x = 1.44485316		 eKin = 9.04797896		 ePot = 34.20446573		 eTot = 43.25244469		&#xD;
141017		a = 1.29393432		 v = 1.13693767		 x = 1.44486433		 eKin = 9.04818488		 ePot = 34.20425979		 eTot = 43.25244467		&#xD;
141018		a = 1.29413114		 v = 1.13695061		 x = 1.44487551		 eKin = 9.04839084		 ePot = 34.20405381		 eTot = 43.25244465		&#xD;
141019		a = 1.29432715		 v = 1.13696355		 x = 1.44488668		 eKin = 9.04859683		 ePot = 34.20384781		 eTot = 43.25244463		&#xD;
141020		a = 1.29452234		 v = 1.13697650		 x = 1.44489786		 eKin = 9.04880285		 ePot = 34.20364177		 eTot = 43.25244462		&#xD;
141021		a = 1.29471671		 v = 1.13698945		 x = 1.44490903		 eKin = 9.04900891		 ePot = 34.20343569		 eTot = 43.25244460		&#xD;
141022		a = 1.29491027		 v = 1.13700239		 x = 1.44492021		 eKin = 9.04921500		 ePot = 34.20322958		 eTot = 43.25244458		&#xD;
141023		a = 1.29510301		 v = 1.13701535		 x = 1.44493138		 eKin = 9.04942112		 ePot = 34.20302344		 eTot = 43.25244456		&#xD;
141024		a = 1.29529493		 v = 1.13702830		 x = 1.44494255		 eKin = 9.04962728		 ePot = 34.20281727		 eTot = 43.25244455		&#xD;
141025		a = 1.29548604		 v = 1.13704125		 x = 1.44495373		 eKin = 9.04983347		 ePot = 34.20261107		 eTot = 43.25244453		&#xD;
141026		a = 1.29567633		 v = 1.13705421		 x = 1.44496490		 eKin = 9.05003969		 ePot = 34.20240483		 eTot = 43.25244451		&#xD;
141027		a = 1.29586581		 v = 1.13706717		 x = 1.44497608		 eKin = 9.05024594		 ePot = 34.20219856		 eTot = 43.25244450		&#xD;
141028		a = 1.29605446		 v = 1.13708013		 x = 1.44498725		 eKin = 9.05045223		 ePot = 34.20199225		 eTot = 43.25244448		&#xD;
141029		a = 1.29624230		 v = 1.13709309		 x = 1.44499843		 eKin = 9.05065855		 ePot = 34.20178592		 eTot = 43.25244446		&#xD;
141030		a = 1.29642933		 v = 1.13710606		 x = 1.44500960		 eKin = 9.05086490		 ePot = 34.20157955		 eTot = 43.25244445		&#xD;
141031		a = 1.29661554		 v = 1.13711902		 x = 1.44502078		 eKin = 9.05107128		 ePot = 34.20137315		 eTot = 43.25244443		&#xD;
141032		a = 1.29680093		 v = 1.13713199		 x = 1.44503195		 eKin = 9.05127770		 ePot = 34.20116672		 eTot = 43.25244441		&#xD;
141033		a = 1.29698550		 v = 1.13714496		 x = 1.44504313		 eKin = 9.05148415		 ePot = 34.20096025		 eTot = 43.25244440		&#xD;
141034		a = 1.29716926		 v = 1.13715793		 x = 1.44505430		 eKin = 9.05169063		 ePot = 34.20075376		 eTot = 43.25244438		&#xD;
141035		a = 1.29735220		 v = 1.13717091		 x = 1.44506548		 eKin = 9.05189714		 ePot = 34.20054723		 eTot = 43.25244436		&#xD;
141036		a = 1.29753433		 v = 1.13718388		 x = 1.44507665		 eKin = 9.05210368		 ePot = 34.20034067		 eTot = 43.25244435		&#xD;
141037		a = 1.29771564		 v = 1.13719686		 x = 1.44508783		 eKin = 9.05231025		 ePot = 34.20013408		 eTot = 43.25244433		&#xD;
141038		a = 1.29789613		 v = 1.13720984		 x = 1.44509900		 eKin = 9.05251686		 ePot = 34.19992746		 eTot = 43.25244432		&#xD;
141039		a = 1.29807581		 v = 1.13722282		 x = 1.44511018		 eKin = 9.05272349		 ePot = 34.19972081		 eTot = 43.25244430		&#xD;
141040		a = 1.29825467		 v = 1.13723580		 x = 1.44512135		 eKin = 9.05293016		 ePot = 34.19951412		 eTot = 43.25244428		&#xD;
141041		a = 1.29843272		 v = 1.13724878		 x = 1.44513253		 eKin = 9.05313686		 ePot = 34.19930741		 eTot = 43.25244427		&#xD;
141042		a = 1.29860995		 v = 1.13726177		 x = 1.44514370		 eKin = 9.05334359		 ePot = 34.19910067		 eTot = 43.25244425		&#xD;
141043		a = 1.29878636		 v = 1.13727476		 x = 1.44515488		 eKin = 9.05355035		 ePot = 34.19889389		 eTot = 43.25244424		&#xD;
141044		a = 1.29896195		 v = 1.13728775		 x = 1.44516605		 eKin = 9.05375714		 ePot = 34.19868709		 eTot = 43.25244422		&#xD;
141045		a = 1.29913673		 v = 1.13730074		 x = 1.44517723		 eKin = 9.05396396		 ePot = 34.19848025		 eTot = 43.25244421		&#xD;
141046		a = 1.29931070		 v = 1.13731373		 x = 1.44518841		 eKin = 9.05417081		 ePot = 34.19827338		 eTot = 43.25244419		&#xD;
141047		a = 1.29948385		 v = 1.13732673		 x = 1.44519958		 eKin = 9.05437769		 ePot = 34.19806649		 eTot = 43.25244417		&#xD;
141048		a = 1.29965618		 v = 1.13733972		 x = 1.44521076		 eKin = 9.05458460		 ePot = 34.19785956		 eTot = 43.25244416		&#xD;
141049		a = 1.29982770		 v = 1.13735272		 x = 1.44522193		 eKin = 9.05479154		 ePot = 34.19765261		 eTot = 43.25244414		&#xD;
141050		a = 1.29999840		 v = 1.13736572		 x = 1.44523311		 eKin = 9.05499851		 ePot = 34.19744562		 eTot = 43.25244413		&#xD;
141051		a = 1.30016828		 v = 1.13737872		 x = 1.44524429		 eKin = 9.05520550		 ePot = 34.19723861		 eTot = 43.25244411		&#xD;
141052		a = 1.30033735		 v = 1.13739173		 x = 1.44525546		 eKin = 9.05541253		 ePot = 34.19703157		 eTot = 43.25244410		&#xD;
141053		a = 1.30050560		 v = 1.13740473		 x = 1.44526664		 eKin = 9.05561959		 ePot = 34.19682449		 eTot = 43.25244408		&#xD;
141054		a = 1.30067304		 v = 1.13741774		 x = 1.44527782		 eKin = 9.05582668		 ePot = 34.19661739		 eTot = 43.25244407		&#xD;
141055		a = 1.30083966		 v = 1.13743075		 x = 1.44528899		 eKin = 9.05603379		 ePot = 34.19641026		 eTot = 43.25244405		&#xD;
141056		a = 1.30100546		 v = 1.13744376		 x = 1.44530017		 eKin = 9.05624094		 ePot = 34.19620310		 eTot = 43.25244404		&#xD;
141057		a = 1.30117045		 v = 1.13745677		 x = 1.44531135		 eKin = 9.05644811		 ePot = 34.19599591		 eTot = 43.25244402		&#xD;
141058		a = 1.30133462		 v = 1.13746978		 x = 1.44532252		 eKin = 9.05665531		 ePot = 34.19578869		 eTot = 43.25244401		&#xD;
141059		a = 1.30149798		 v = 1.13748280		 x = 1.44533370		 eKin = 9.05686255		 ePot = 34.19558145		 eTot = 43.25244399		&#xD;
141060		a = 1.30166052		 v = 1.13749581		 x = 1.44534488		 eKin = 9.05706980		 ePot = 34.19537417		 eTot = 43.25244398		&#xD;
141061		a = 1.30182225		 v = 1.13750883		 x = 1.44535605		 eKin = 9.05727709		 ePot = 34.19516687		 eTot = 43.25244397		&#xD;
141062		a = 1.30198315		 v = 1.13752185		 x = 1.44536723		 eKin = 9.05748441		 ePot = 34.19495954		 eTot = 43.25244395		&#xD;
141063		a = 1.30214325		 v = 1.13753487		 x = 1.44537841		 eKin = 9.05769175		 ePot = 34.19475218		 eTot = 43.25244394		&#xD;
141064		a = 1.30230253		 v = 1.13754790		 x = 1.44538959		 eKin = 9.05789912		 ePot = 34.19454480		 eTot = 43.25244392		&#xD;
141065		a = 1.30246099		 v = 1.13756092		 x = 1.44540076		 eKin = 9.05810652		 ePot = 34.19433739		 eTot = 43.25244391		&#xD;
141066		a = 1.30261864		 v = 1.13757395		 x = 1.44541194		 eKin = 9.05831395		 ePot = 34.19412994		 eTot = 43.25244389		&#xD;
141067		a = 1.30277547		 v = 1.13758698		 x = 1.44542312		 eKin = 9.05852140		 ePot = 34.19392248		 eTot = 43.25244388		&#xD;
141068		a = 1.30293148		 v = 1.13760000		 x = 1.44543430		 eKin = 9.05872889		 ePot = 34.19371498		 eTot = 43.25244387		&#xD;
141069		a = 1.30308668		 v = 1.13761304		 x = 1.44544547		 eKin = 9.05893639		 ePot = 34.19350746		 eTot = 43.25244385		&#xD;
141070		a = 1.30324107		 v = 1.13762607		 x = 1.44545665		 eKin = 9.05914393		 ePot = 34.19329991		 eTot = 43.25244384		&#xD;
141071		a = 1.30339463		 v = 1.13763910		 x = 1.44546783		 eKin = 9.05935149		 ePot = 34.19309233		 eTot = 43.25244382		&#xD;
141072		a = 1.30354739		 v = 1.13765214		 x = 1.44547901		 eKin = 9.05955908		 ePot = 34.19288473		 eTot = 43.25244381		&#xD;
141073		a = 1.30369933		 v = 1.13766517		 x = 1.44549019		 eKin = 9.05976670		 ePot = 34.19267710		 eTot = 43.25244380		&#xD;
141074		a = 1.30385045		 v = 1.13767821		 x = 1.44550136		 eKin = 9.05997434		 ePot = 34.19246944		 eTot = 43.25244378		&#xD;
141075		a = 1.30400075		 v = 1.13769125		 x = 1.44551254		 eKin = 9.06018201		 ePot = 34.19226176		 eTot = 43.25244377		&#xD;
141076		a = 1.30415024		 v = 1.13770429		 x = 1.44552372		 eKin = 9.06038971		 ePot = 34.19205405		 eTot = 43.25244376		&#xD;
141077		a = 1.30429892		 v = 1.13771734		 x = 1.44553490		 eKin = 9.06059743		 ePot = 34.19184631		 eTot = 43.25244374		&#xD;
141078		a = 1.30444678		 v = 1.13773038		 x = 1.44554608		 eKin = 9.06080518		 ePot = 34.19163855		 eTot = 43.25244373		&#xD;
141079		a = 1.30459382		 v = 1.13774343		 x = 1.44555726		 eKin = 9.06101295		 ePot = 34.19143076		 eTot = 43.25244372		&#xD;
141080		a = 1.30474005		 v = 1.13775648		 x = 1.44556843		 eKin = 9.06122075		 ePot = 34.19122295		 eTot = 43.25244370		&#xD;
141081		a = 1.30488547		 v = 1.13776952		 x = 1.44557961		 eKin = 9.06142858		 ePot = 34.19101511		 eTot = 43.25244369		&#xD;
141082		a = 1.30503006		 v = 1.13778257		 x = 1.44559079		 eKin = 9.06163643		 ePot = 34.19080725		 eTot = 43.25244368		&#xD;
141083		a = 1.30517385		 v = 1.13779563		 x = 1.44560197		 eKin = 9.06184430		 ePot = 34.19059936		 eTot = 43.25244366		&#xD;
141084		a = 1.30531681		 v = 1.13780868		 x = 1.44561315		 eKin = 9.06205221		 ePot = 34.19039144		 eTot = 43.25244365		&#xD;
141085		a = 1.30545897		 v = 1.13782173		 x = 1.44562433		 eKin = 9.06226013		 ePot = 34.19018350		 eTot = 43.25244364		&#xD;
141086		a = 1.30560030		 v = 1.13783479		 x = 1.44563551		 eKin = 9.06246809		 ePot = 34.18997554		 eTot = 43.25244362		&#xD;
141087		a = 1.30574082		 v = 1.13784785		 x = 1.44564669		 eKin = 9.06267606		 ePot = 34.18976755		 eTot = 43.25244361		&#xD;
141088		a = 1.30588053		 v = 1.13786091		 x = 1.44565787		 eKin = 9.06288406		 ePot = 34.18955953		 eTot = 43.25244360		&#xD;
141089		a = 1.30601942		 v = 1.13787397		 x = 1.44566904		 eKin = 9.06309209		 ePot = 34.18935150		 eTot = 43.25244359		&#xD;
141090		a = 1.30615749		 v = 1.13788703		 x = 1.44568022		 eKin = 9.06330014		 ePot = 34.18914343		 eTot = 43.25244357		&#xD;
141091		a = 1.30629475		 v = 1.13790009		 x = 1.44569140		 eKin = 9.06350822		 ePot = 34.18893534		 eTot = 43.25244356		&#xD;
141092		a = 1.30643120		 v = 1.13791316		 x = 1.44570258		 eKin = 9.06371632		 ePot = 34.18872723		 eTot = 43.25244355		&#xD;
141093		a = 1.30656683		 v = 1.13792622		 x = 1.44571376		 eKin = 9.06392444		 ePot = 34.18851910		 eTot = 43.25244354		&#xD;
141094		a = 1.30670164		 v = 1.13793929		 x = 1.44572494		 eKin = 9.06413259		 ePot = 34.18831094		 eTot = 43.25244352		&#xD;
141095		a = 1.30683564		 v = 1.13795236		 x = 1.44573612		 eKin = 9.06434076		 ePot = 34.18810275		 eTot = 43.25244351		&#xD;
141096		a = 1.30696882		 v = 1.13796543		 x = 1.44574730		 eKin = 9.06454895		 ePot = 34.18789455		 eTot = 43.25244350		&#xD;
141097		a = 1.30710119		 v = 1.13797850		 x = 1.44575848		 eKin = 9.06475717		 ePot = 34.18768631		 eTot = 43.25244349		&#xD;
141098		a = 1.30723274		 v = 1.13799157		 x = 1.44576966		 eKin = 9.06496541		 ePot = 34.18747806		 eTot = 43.25244347		&#xD;
141099		a = 1.30736348		 v = 1.13800464		 x = 1.44578084		 eKin = 9.06517368		 ePot = 34.18726978		 eTot = 43.25244346		&#xD;
141100		a = 1.30749340		 v = 1.13801772		 x = 1.44579202		 eKin = 9.06538197		 ePot = 34.18706148		 eTot = 43.25244345		&#xD;
141101		a = 1.30762251		 v = 1.13803079		 x = 1.44580320		 eKin = 9.06559028		 ePot = 34.18685316		 eTot = 43.25244344		&#xD;
141102		a = 1.30775080		 v = 1.13804387		 x = 1.44581438		 eKin = 9.06579862		 ePot = 34.18664481		 eTot = 43.25244343		&#xD;
141103		a = 1.30787828		 v = 1.13805695		 x = 1.44582556		 eKin = 9.06600697		 ePot = 34.18643644		 eTot = 43.25244342		&#xD;
141104		a = 1.30800494		 v = 1.13807003		 x = 1.44583675		 eKin = 9.06621535		 ePot = 34.18622805		 eTot = 43.25244340		&#xD;
141105		a = 1.30813079		 v = 1.13808311		 x = 1.44584793		 eKin = 9.06642376		 ePot = 34.18601964		 eTot = 43.25244339		&#xD;
141106		a = 1.30825582		 v = 1.13809619		 x = 1.44585911		 eKin = 9.06663218		 ePot = 34.18581120		 eTot = 43.25244338		&#xD;
141107		a = 1.30838004		 v = 1.13810928		 x = 1.44587029		 eKin = 9.06684063		 ePot = 34.18560274		 eTot = 43.25244337		&#xD;
141108		a = 1.30850344		 v = 1.13812236		 x = 1.44588147		 eKin = 9.06704910		 ePot = 34.18539426		 eTot = 43.25244336		&#xD;
141109		a = 1.30862602		 v = 1.13813545		 x = 1.44589265		 eKin = 9.06725759		 ePot = 34.18518575		 eTot = 43.25244335		&#xD;
141110		a = 1.30874779		 v = 1.13814854		 x = 1.44590383		 eKin = 9.06746611		 ePot = 34.18497723		 eTot = 43.25244333		&#xD;
141111		a = 1.30886875		 v = 1.13816163		 x = 1.44591501		 eKin = 9.06767464		 ePot = 34.18476868		 eTot = 43.25244332		&#xD;
141112		a = 1.30898889		 v = 1.13817472		 x = 1.44592619		 eKin = 9.06788320		 ePot = 34.18456011		 eTot = 43.25244331		&#xD;
141113		a = 1.30910822		 v = 1.13818781		 x = 1.44593738		 eKin = 9.06809178		 ePot = 34.18435152		 eTot = 43.25244330		&#xD;
141114		a = 1.30922673		 v = 1.13820090		 x = 1.44594856		 eKin = 9.06830038		 ePot = 34.18414291		 eTot = 43.25244329		&#xD;
141115		a = 1.30934442		 v = 1.13821399		 x = 1.44595974		 eKin = 9.06850900		 ePot = 34.18393428		 eTot = 43.25244328		&#xD;
141116		a = 1.30946130		 v = 1.13822709		 x = 1.44597092		 eKin = 9.06871764		 ePot = 34.18372563		 eTot = 43.25244327		&#xD;
141117		a = 1.30957737		 v = 1.13824018		 x = 1.44598210		 eKin = 9.06892631		 ePot = 34.18351695		 eTot = 43.25244326		&#xD;
141118		a = 1.30969262		 v = 1.13825328		 x = 1.44599328		 eKin = 9.06913499		 ePot = 34.18330826		 eTot = 43.25244325		&#xD;
141119		a = 1.30980705		 v = 1.13826638		 x = 1.44600447		 eKin = 9.06934370		 ePot = 34.18309954		 eTot = 43.25244324		&#xD;
141120		a = 1.30992067		 v = 1.13827948		 x = 1.44601565		 eKin = 9.06955242		 ePot = 34.18289080		 eTot = 43.25244323		&#xD;
141121		a = 1.31003348		 v = 1.13829258		 x = 1.44602683		 eKin = 9.06976117		 ePot = 34.18268205		 eTot = 43.25244322		&#xD;
141122		a = 1.31014547		 v = 1.13830568		 x = 1.44603801		 eKin = 9.06996994		 ePot = 34.18247327		 eTot = 43.25244320		&#xD;
141123		a = 1.31025664		 v = 1.13831878		 x = 1.44604920		 eKin = 9.07017872		 ePot = 34.18226447		 eTot = 43.25244319		&#xD;
141124		a = 1.31036700		 v = 1.13833188		 x = 1.44606038		 eKin = 9.07038753		 ePot = 34.18205565		 eTot = 43.25244318		&#xD;
141125		a = 1.31047654		 v = 1.13834499		 x = 1.44607156		 eKin = 9.07059636		 ePot = 34.18184682		 eTot = 43.25244317		&#xD;
141126		a = 1.31058527		 v = 1.13835810		 x = 1.44608274		 eKin = 9.07080520		 ePot = 34.18163796		 eTot = 43.25244316		&#xD;
141127		a = 1.31069319		 v = 1.13837120		 x = 1.44609393		 eKin = 9.07101407		 ePot = 34.18142908		 eTot = 43.25244315		&#xD;
141128		a = 1.31080029		 v = 1.13838431		 x = 1.44610511		 eKin = 9.07122296		 ePot = 34.18122019		 eTot = 43.25244314		&#xD;
141129		a = 1.31090657		 v = 1.13839742		 x = 1.44611629		 eKin = 9.07143186		 ePot = 34.18101127		 eTot = 43.25244313		&#xD;
141130		a = 1.31101204		 v = 1.13841053		 x = 1.44612747		 eKin = 9.07164079		 ePot = 34.18080233		 eTot = 43.25244312		&#xD;
141131		a = 1.31111670		 v = 1.13842364		 x = 1.44613866		 eKin = 9.07184973		 ePot = 34.18059338		 eTot = 43.25244311		&#xD;
141132		a = 1.31122054		 v = 1.13843675		 x = 1.44614984		 eKin = 9.07205870		 ePot = 34.18038441		 eTot = 43.25244310		&#xD;
141133		a = 1.31132356		 v = 1.13844987		 x = 1.44616102		 eKin = 9.07226768		 ePot = 34.18017541		 eTot = 43.25244309		&#xD;
141134		a = 1.31142577		 v = 1.13846298		 x = 1.44617221		 eKin = 9.07247668		 ePot = 34.17996640		 eTot = 43.25244308		&#xD;
141135		a = 1.31152717		 v = 1.13847610		 x = 1.44618339		 eKin = 9.07268570		 ePot = 34.17975737		 eTot = 43.25244308		&#xD;
141136		a = 1.31162774		 v = 1.13848921		 x = 1.44619458		 eKin = 9.07289474		 ePot = 34.17954832		 eTot = 43.25244307		&#xD;
141137		a = 1.31172751		 v = 1.13850233		 x = 1.44620576		 eKin = 9.07310380		 ePot = 34.17933926		 eTot = 43.25244306		&#xD;
141138		a = 1.31182646		 v = 1.13851545		 x = 1.44621694		 eKin = 9.07331287		 ePot = 34.17913017		 eTot = 43.25244305		&#xD;
141139		a = 1.31192459		 v = 1.13852857		 x = 1.44622813		 eKin = 9.07352197		 ePot = 34.17892107		 eTot = 43.25244304		&#xD;
141140		a = 1.31202191		 v = 1.13854169		 x = 1.44623931		 eKin = 9.07373108		 ePot = 34.17871195		 eTot = 43.25244303		&#xD;
141141		a = 1.31211842		 v = 1.13855481		 x = 1.44625050		 eKin = 9.07394021		 ePot = 34.17850281		 eTot = 43.25244302		&#xD;
141142		a = 1.31221411		 v = 1.13856793		 x = 1.44626168		 eKin = 9.07414936		 ePot = 34.17829365		 eTot = 43.25244301		&#xD;
141143		a = 1.31230898		 v = 1.13858105		 x = 1.44627286		 eKin = 9.07435852		 ePot = 34.17808448		 eTot = 43.25244300		&#xD;
141144		a = 1.31240304		 v = 1.13859418		 x = 1.44628405		 eKin = 9.07456770		 ePot = 34.17787529		 eTot = 43.25244299		&#xD;
141145		a = 1.31249628		 v = 1.13860730		 x = 1.44629523		 eKin = 9.07477690		 ePot = 34.17766608		 eTot = 43.25244298		&#xD;
141146		a = 1.31258871		 v = 1.13862043		 x = 1.44630642		 eKin = 9.07498612		 ePot = 34.17745685		 eTot = 43.25244297		&#xD;
141147		a = 1.31268033		 v = 1.13863355		 x = 1.44631760		 eKin = 9.07519536		 ePot = 34.17724761		 eTot = 43.25244297		&#xD;
141148		a = 1.31277113		 v = 1.13864668		 x = 1.44632879		 eKin = 9.07540461		 ePot = 34.17703835		 eTot = 43.25244296		&#xD;
141149		a = 1.31286111		 v = 1.13865981		 x = 1.44633997		 eKin = 9.07561388		 ePot = 34.17682907		 eTot = 43.25244295		&#xD;
141150		a = 1.31295028		 v = 1.13867294		 x = 1.44635116		 eKin = 9.07582316		 ePot = 34.17661978		 eTot = 43.25244294		&#xD;
141151		a = 1.31303864		 v = 1.13868607		 x = 1.44636234		 eKin = 9.07603246		 ePot = 34.17641047		 eTot = 43.25244293		&#xD;
141152		a = 1.31312618		 v = 1.13869920		 x = 1.44637353		 eKin = 9.07624178		 ePot = 34.17620114		 eTot = 43.25244292		&#xD;
141153		a = 1.31321290		 v = 1.13871233		 x = 1.44638471		 eKin = 9.07645111		 ePot = 34.17599180		 eTot = 43.25244291		&#xD;
141154		a = 1.31329881		 v = 1.13872547		 x = 1.44639590		 eKin = 9.07666047		 ePot = 34.17578244		 eTot = 43.25244291		&#xD;
141155		a = 1.31338390		 v = 1.13873860		 x = 1.44640708		 eKin = 9.07686983		 ePot = 34.17557306		 eTot = 43.25244290		&#xD;
141156		a = 1.31346818		 v = 1.13875174		 x = 1.44641827		 eKin = 9.07707922		 ePot = 34.17536367		 eTot = 43.25244289		&#xD;
141157		a = 1.31355165		 v = 1.13876487		 x = 1.44642946		 eKin = 9.07728861		 ePot = 34.17515427		 eTot = 43.25244288		&#xD;
141158		a = 1.31363430		 v = 1.13877801		 x = 1.44644064		 eKin = 9.07749803		 ePot = 34.17494484		 eTot = 43.25244287		&#xD;
141159		a = 1.31371613		 v = 1.13879115		 x = 1.44645183		 eKin = 9.07770746		 ePot = 34.17473541		 eTot = 43.25244287		&#xD;
141160		a = 1.31379715		 v = 1.13880428		 x = 1.44646301		 eKin = 9.07791690		 ePot = 34.17452595		 eTot = 43.25244286		&#xD;
141161		a = 1.31387735		 v = 1.13881742		 x = 1.44647420		 eKin = 9.07812637		 ePot = 34.17431648		 eTot = 43.25244285		&#xD;
141162		a = 1.31395674		 v = 1.13883056		 x = 1.44648539		 eKin = 9.07833584		 ePot = 34.17410700		 eTot = 43.25244284		&#xD;
141163		a = 1.31403532		 v = 1.13884370		 x = 1.44649657		 eKin = 9.07854533		 ePot = 34.17389750		 eTot = 43.25244283		&#xD;
141164		a = 1.31411308		 v = 1.13885684		 x = 1.44650776		 eKin = 9.07875484		 ePot = 34.17368799		 eTot = 43.25244283		&#xD;
141165		a = 1.31419002		 v = 1.13886998		 x = 1.44651895		 eKin = 9.07896436		 ePot = 34.17347846		 eTot = 43.25244282		&#xD;
141166		a = 1.31426615		 v = 1.13888313		 x = 1.44653013		 eKin = 9.07917390		 ePot = 34.17326892		 eTot = 43.25244281		&#xD;
141167		a = 1.31434146		 v = 1.13889627		 x = 1.44654132		 eKin = 9.07938345		 ePot = 34.17305936		 eTot = 43.25244280		&#xD;
141168		a = 1.31441596		 v = 1.13890941		 x = 1.44655251		 eKin = 9.07959301		 ePot = 34.17284979		 eTot = 43.25244280		&#xD;
141169		a = 1.31448964		 v = 1.13892256		 x = 1.44656369		 eKin = 9.07980259		 ePot = 34.17264020		 eTot = 43.25244279		&#xD;
141170		a = 1.31456251		 v = 1.13893571		 x = 1.44657488		 eKin = 9.08001218		 ePot = 34.17243060		 eTot = 43.25244278		&#xD;
141171		a = 1.31463457		 v = 1.13894885		 x = 1.44658607		 eKin = 9.08022179		 ePot = 34.17222099		 eTot = 43.25244277		&#xD;
141172		a = 1.31470580		 v = 1.13896200		 x = 1.44659725		 eKin = 9.08043141		 ePot = 34.17201136		 eTot = 43.25244277		&#xD;
141173		a = 1.31477623		 v = 1.13897515		 x = 1.44660844		 eKin = 9.08064104		 ePot = 34.17180172		 eTot = 43.25244276		&#xD;
141174		a = 1.31484584		 v = 1.13898830		 x = 1.44661963		 eKin = 9.08085069		 ePot = 34.17159206		 eTot = 43.25244275		&#xD;
141175		a = 1.31491463		 v = 1.13900144		 x = 1.44663082		 eKin = 9.08106036		 ePot = 34.17138239		 eTot = 43.25244275		&#xD;
141176		a = 1.31498261		 v = 1.13901459		 x = 1.44664200		 eKin = 9.08127003		 ePot = 34.17117271		 eTot = 43.25244274		&#xD;
141177		a = 1.31504977		 v = 1.13902774		 x = 1.44665319		 eKin = 9.08147972		 ePot = 34.17096301		 eTot = 43.25244273		&#xD;
141178		a = 1.31511612		 v = 1.13904090		 x = 1.44666438		 eKin = 9.08168942		 ePot = 34.17075331		 eTot = 43.25244273		&#xD;
141179		a = 1.31518165		 v = 1.13905405		 x = 1.44667557		 eKin = 9.08189914		 ePot = 34.17054358		 eTot = 43.25244272		&#xD;
141180		a = 1.31524637		 v = 1.13906720		 x = 1.44668676		 eKin = 9.08210886		 ePot = 34.17033385		 eTot = 43.25244271		&#xD;
141181		a = 1.31531027		 v = 1.13908035		 x = 1.44669795		 eKin = 9.08231860		 ePot = 34.17012410		 eTot = 43.25244271		&#xD;
141182		a = 1.31537335		 v = 1.13909351		 x = 1.44670913		 eKin = 9.08252836		 ePot = 34.16991434		 eTot = 43.25244270		&#xD;
141183		a = 1.31543563		 v = 1.13910666		 x = 1.44672032		 eKin = 9.08273812		 ePot = 34.16970457		 eTot = 43.25244269		&#xD;
141184		a = 1.31549708		 v = 1.13911982		 x = 1.44673151		 eKin = 9.08294790		 ePot = 34.16949479		 eTot = 43.25244269		&#xD;
141185		a = 1.31555772		 v = 1.13913297		 x = 1.44674270		 eKin = 9.08315769		 ePot = 34.16928499		 eTot = 43.25244268		&#xD;
141186		a = 1.31561755		 v = 1.13914613		 x = 1.44675389		 eKin = 9.08336749		 ePot = 34.16907518		 eTot = 43.25244267		&#xD;
141187		a = 1.31567656		 v = 1.13915928		 x = 1.44676508		 eKin = 9.08357731		 ePot = 34.16886536		 eTot = 43.25244267		&#xD;
141188		a = 1.31573476		 v = 1.13917244		 x = 1.44677627		 eKin = 9.08378713		 ePot = 34.16865553		 eTot = 43.25244266		&#xD;
141189		a = 1.31579214		 v = 1.13918560		 x = 1.44678746		 eKin = 9.08399697		 ePot = 34.16844569		 eTot = 43.25244266		&#xD;
141190		a = 1.31584870		 v = 1.13919876		 x = 1.44679865		 eKin = 9.08420682		 ePot = 34.16823583		 eTot = 43.25244265		&#xD;
141191		a = 1.31590445		 v = 1.13921192		 x = 1.44680983		 eKin = 9.08441668		 ePot = 34.16802597		 eTot = 43.25244265		&#xD;
141192		a = 1.31595938		 v = 1.13922508		 x = 1.44682102		 eKin = 9.08462655		 ePot = 34.16781609		 eTot = 43.25244264		&#xD;
141193		a = 1.31601350		 v = 1.13923824		 x = 1.44683221		 eKin = 9.08483643		 ePot = 34.16760620		 eTot = 43.25244263		&#xD;
141194		a = 1.31606681		 v = 1.13925140		 x = 1.44684340		 eKin = 9.08504633		 ePot = 34.16739630		 eTot = 43.25244263		&#xD;
141195		a = 1.31611929		 v = 1.13926456		 x = 1.44685459		 eKin = 9.08525623		 ePot = 34.16718639		 eTot = 43.25244262		&#xD;
141196		a = 1.31617097		 v = 1.13927772		 x = 1.44686578		 eKin = 9.08546615		 ePot = 34.16697647		 eTot = 43.25244262		&#xD;
141197		a = 1.31622183		 v = 1.13929088		 x = 1.44687697		 eKin = 9.08567608		 ePot = 34.16676654		 eTot = 43.25244261		&#xD;
141198		a = 1.31627187		 v = 1.13930405		 x = 1.44688816		 eKin = 9.08588601		 ePot = 34.16655659		 eTot = 43.25244261		&#xD;
141199		a = 1.31632109		 v = 1.13931721		 x = 1.44689935		 eKin = 9.08609596		 ePot = 34.16634664		 eTot = 43.25244260		&#xD;
141200		a = 1.31636951		 v = 1.13933037		 x = 1.44691054		 eKin = 9.08630592		 ePot = 34.16613668		 eTot = 43.25244260		&#xD;
141201		a = 1.31641710		 v = 1.13934354		 x = 1.44692174		 eKin = 9.08651589		 ePot = 34.16592670		 eTot = 43.25244259		&#xD;
141202		a = 1.31646388		 v = 1.13935670		 x = 1.44693293		 eKin = 9.08672586		 ePot = 34.16571672		 eTot = 43.25244259		&#xD;
141203		a = 1.31650985		 v = 1.13936987		 x = 1.44694412		 eKin = 9.08693585		 ePot = 34.16550673		 eTot = 43.25244258		&#xD;
141204		a = 1.31655500		 v = 1.13938303		 x = 1.44695531		 eKin = 9.08714585		 ePot = 34.16529673		 eTot = 43.25244258		&#xD;
141205		a = 1.31659933		 v = 1.13939620		 x = 1.44696650		 eKin = 9.08735586		 ePot = 34.16508671		 eTot = 43.25244257		&#xD;
141206		a = 1.31664285		 v = 1.13940936		 x = 1.44697769		 eKin = 9.08756587		 ePot = 34.16487669		 eTot = 43.25244257		&#xD;
141207		a = 1.31668555		 v = 1.13942253		 x = 1.44698888		 eKin = 9.08777590		 ePot = 34.16466666		 eTot = 43.25244256		&#xD;
141208		a = 1.31672744		 v = 1.13943570		 x = 1.44700007		 eKin = 9.08798594		 ePot = 34.16445662		 eTot = 43.25244256		&#xD;
141209		a = 1.31676851		 v = 1.13944887		 x = 1.44701126		 eKin = 9.08819598		 ePot = 34.16424657		 eTot = 43.25244255		&#xD;
141210		a = 1.31680877		 v = 1.13946203		 x = 1.44702246		 eKin = 9.08840603		 ePot = 34.16403651		 eTot = 43.25244255		&#xD;
141211		a = 1.31684821		 v = 1.13947520		 x = 1.44703365		 eKin = 9.08861610		 ePot = 34.16382645		 eTot = 43.25244254		&#xD;
141212		a = 1.31688684		 v = 1.13948837		 x = 1.44704484		 eKin = 9.08882617		 ePot = 34.16361637		 eTot = 43.25244254		&#xD;
141213		a = 1.31692465		 v = 1.13950154		 x = 1.44705603		 eKin = 9.08903625		 ePot = 34.16340629		 eTot = 43.25244253		&#xD;
141214		a = 1.31696164		 v = 1.13951471		 x = 1.44706722		 eKin = 9.08924633		 ePot = 34.16319620		 eTot = 43.25244253		&#xD;
141215		a = 1.31699782		 v = 1.13952788		 x = 1.44707842		 eKin = 9.08945643		 ePot = 34.16298609		 eTot = 43.25244253		&#xD;
141216		a = 1.31703318		 v = 1.13954105		 x = 1.44708961		 eKin = 9.08966654		 ePot = 34.16277599		 eTot = 43.25244252		&#xD;
141217		a = 1.31706773		 v = 1.13955422		 x = 1.44710080		 eKin = 9.08987665		 ePot = 34.16256587		 eTot = 43.25244252		&#xD;
141218		a = 1.31710146		 v = 1.13956739		 x = 1.44711199		 eKin = 9.09008677		 ePot = 34.16235574		 eTot = 43.25244251		&#xD;
141219		a = 1.31713438		 v = 1.13958056		 x = 1.44712319		 eKin = 9.09029690		 ePot = 34.16214561		 eTot = 43.25244251		&#xD;
141220		a = 1.31716648		 v = 1.13959374		 x = 1.44713438		 eKin = 9.09050703		 ePot = 34.16193547		 eTot = 43.25244251		&#xD;
141221		a = 1.31719776		 v = 1.13960691		 x = 1.44714557		 eKin = 9.09071718		 ePot = 34.16172532		 eTot = 43.25244250		&#xD;
141222		a = 1.31722823		 v = 1.13962008		 x = 1.44715676		 eKin = 9.09092733		 ePot = 34.16151517		 eTot = 43.25244250		&#xD;
141223		a = 1.31725788		 v = 1.13963325		 x = 1.44716796		 eKin = 9.09113749		 ePot = 34.16130501		 eTot = 43.25244249		&#xD;
141224		a = 1.31728672		 v = 1.13964643		 x = 1.44717915		 eKin = 9.09134765		 ePot = 34.16109484		 eTot = 43.25244249		&#xD;
141225		a = 1.31731474		 v = 1.13965960		 x = 1.44719034		 eKin = 9.09155782		 ePot = 34.16088466		 eTot = 43.25244249		&#xD;
141226		a = 1.31734194		 v = 1.13967277		 x = 1.44720154		 eKin = 9.09176800		 ePot = 34.16067448		 eTot = 43.25244248		&#xD;
141227		a = 1.31736833		 v = 1.13968595		 x = 1.44721273		 eKin = 9.09197819		 ePot = 34.16046429		 eTot = 43.25244248		&#xD;
141228		a = 1.31739391		 v = 1.13969912		 x = 1.44722392		 eKin = 9.09218838		 ePot = 34.16025409		 eTot = 43.25244248		&#xD;
141229		a = 1.31741867		 v = 1.13971229		 x = 1.44723512		 eKin = 9.09239858		 ePot = 34.16004389		 eTot = 43.25244247		&#xD;
141230		a = 1.31744261		 v = 1.13972547		 x = 1.44724631		 eKin = 9.09260879		 ePot = 34.15983368		 eTot = 43.25244247		&#xD;
141231		a = 1.31746573		 v = 1.13973864		 x = 1.44725751		 eKin = 9.09281900		 ePot = 34.15962347		 eTot = 43.25244247		&#xD;
141232		a = 1.31748804		 v = 1.13975182		 x = 1.44726870		 eKin = 9.09302922		 ePot = 34.15941325		 eTot = 43.25244246		&#xD;
141233		a = 1.31750954		 v = 1.13976499		 x = 1.44727990		 eKin = 9.09323944		 ePot = 34.15920302		 eTot = 43.25244246		&#xD;
141234		a = 1.31753021		 v = 1.13977817		 x = 1.44729109		 eKin = 9.09344967		 ePot = 34.15899279		 eTot = 43.25244246		&#xD;
141235		a = 1.31755008		 v = 1.13979134		 x = 1.44730228		 eKin = 9.09365991		 ePot = 34.15878255		 eTot = 43.25244246		&#xD;
141236		a = 1.31756912		 v = 1.13980452		 x = 1.44731348		 eKin = 9.09387015		 ePot = 34.15857230		 eTot = 43.25244245		&#xD;
141237		a = 1.31758735		 v = 1.13981770		 x = 1.44732467		 eKin = 9.09408040		 ePot = 34.15836205		 eTot = 43.25244245		&#xD;
141238		a = 1.31760476		 v = 1.13983087		 x = 1.44733587		 eKin = 9.09429065		 ePot = 34.15815180		 eTot = 43.25244245		&#xD;
141239		a = 1.31762136		 v = 1.13984405		 x = 1.44734706		 eKin = 9.09450091		 ePot = 34.15794154		 eTot = 43.25244244		&#xD;
141240		a = 1.31763714		 v = 1.13985722		 x = 1.44735826		 eKin = 9.09471117		 ePot = 34.15773127		 eTot = 43.25244244		&#xD;
141241		a = 1.31765211		 v = 1.13987040		 x = 1.44736945		 eKin = 9.09492143		 ePot = 34.15752100		 eTot = 43.25244244		&#xD;
141242		a = 1.31766626		 v = 1.13988358		 x = 1.44738065		 eKin = 9.09513171		 ePot = 34.15731073		 eTot = 43.25244244		&#xD;
141243		a = 1.31767959		 v = 1.13989675		 x = 1.44739185		 eKin = 9.09534198		 ePot = 34.15710045		 eTot = 43.25244243		&#xD;
141244		a = 1.31769211		 v = 1.13990993		 x = 1.44740304		 eKin = 9.09555227		 ePot = 34.15689017		 eTot = 43.25244243		&#xD;
141245		a = 1.31770381		 v = 1.13992311		 x = 1.44741424		 eKin = 9.09576255		 ePot = 34.15667988		 eTot = 43.25244243		&#xD;
141246		a = 1.31771469		 v = 1.13993628		 x = 1.44742543		 eKin = 9.09597284		 ePot = 34.15646959		 eTot = 43.25244243		&#xD;
141247		a = 1.31772476		 v = 1.13994946		 x = 1.44743663		 eKin = 9.09618314		 ePot = 34.15625929		 eTot = 43.25244243		&#xD;
141248		a = 1.31773401		 v = 1.13996264		 x = 1.44744783		 eKin = 9.09639343		 ePot = 34.15604899		 eTot = 43.25244242		&#xD;
141249		a = 1.31774244		 v = 1.13997582		 x = 1.44745902		 eKin = 9.09660374		 ePot = 34.15583869		 eTot = 43.25244242		&#xD;
141250		a = 1.31775006		 v = 1.13998899		 x = 1.44747022		 eKin = 9.09681404		 ePot = 34.15562838		 eTot = 43.25244242		&#xD;
141251		a = 1.31775686		 v = 1.14000217		 x = 1.44748142		 eKin = 9.09702435		 ePot = 34.15541807		 eTot = 43.25244242		&#xD;
141252		a = 1.31776285		 v = 1.14001535		 x = 1.44749261		 eKin = 9.09723467		 ePot = 34.15520775		 eTot = 43.25244242		&#xD;
141253		a = 1.31776802		 v = 1.14002853		 x = 1.44750381		 eKin = 9.09744498		 ePot = 34.15499743		 eTot = 43.25244242		&#xD;
141254		a = 1.31777237		 v = 1.14004171		 x = 1.44751501		 eKin = 9.09765530		 ePot = 34.15478711		 eTot = 43.25244241		&#xD;
141255		a = 1.31777591		 v = 1.14005488		 x = 1.44752620		 eKin = 9.09786562		 ePot = 34.15457679		 eTot = 43.25244241		&#xD;
141256		a = 1.31777863		 v = 1.14006806		 x = 1.44753740		 eKin = 9.09807595		 ePot = 34.15436646		 eTot = 43.25244241		&#xD;
141257		a = 1.31778053		 v = 1.14008124		 x = 1.44754860		 eKin = 9.09828628		 ePot = 34.15415613		 eTot = 43.25244241		&#xD;
141258		a = 1.31778162		 v = 1.14009442		 x = 1.44755980		 eKin = 9.09849661		 ePot = 34.15394580		 eTot = 43.25244241		&#xD;


Accuracy: 99.99978197049047%

Iterations: 141 258
Step size (seconds): 1.0E-5
Total time (seconds): 1.4125800000000002

Computation time: 9.396 seconds&#xD;
</consoleOutput>
          <consoleOutput></consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1519833274975" mode="run" className="app.MainApp">
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrValues>app.MainApp</launchAttrValues>
          <launchAttrValues>Physics</launchAttrValues>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1523366822759" mode="run" className="patterns.observable2.ObservableHighscoreListTest">
          <launchAttrNames>org.eclipse.jdt.junit.CONTAINER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.junit.TEST_KIND</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.VM_ARGUMENTS</launchAttrNames>
          <launchAttrValues></launchAttrValues>
          <launchAttrValues>org.eclipse.jdt.junit.loader.junit4</launchAttrValues>
          <launchAttrValues>patterns.observable2.ObservableHighscoreListTest</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>-ea</launchAttrValues>
          <consoleOutput></consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1523367030180" mode="run" className="inheritance.Train">
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrValues>inheritance.Train</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <consoleOutput>TrainCar: 
PassengerCar [passengerCount=30]
CargoCar [totalWeight = 4200, cargoWeight = 3000]
PassengerCar [passengerCount=20]&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1523367035946" mode="run" className="inheritance.Train">
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrValues>inheritance.Train</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <consoleOutput>Train: 
PassengerCar [passengerCount=30]
CargoCar [totalWeight = 4200, cargoWeight = 3000]
PassengerCar [passengerCount=20]&#xD;
</consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1523367056219" mode="run" className="inheritance.TrainCarTest">
          <launchAttrNames>org.eclipse.jdt.junit.CONTAINER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.junit.TEST_KIND</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.VM_ARGUMENTS</launchAttrNames>
          <launchAttrValues></launchAttrValues>
          <launchAttrValues>org.eclipse.jdt.junit.loader.junit4</launchAttrValues>
          <launchAttrValues>inheritance.TrainCarTest</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>-ea</launchAttrValues>
          <consoleOutput></consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1523367060387" mode="run" className="inheritance.PassengerCarTest">
          <launchAttrNames>org.eclipse.jdt.junit.CONTAINER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.junit.TEST_KIND</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.VM_ARGUMENTS</launchAttrNames>
          <launchAttrValues></launchAttrValues>
          <launchAttrValues>org.eclipse.jdt.junit.loader.junit4</launchAttrValues>
          <launchAttrValues>inheritance.PassengerCarTest</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>-ea</launchAttrValues>
          <consoleOutput></consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1523367063572" mode="run" className="inheritance.CargoCarTest">
          <launchAttrNames>org.eclipse.jdt.junit.CONTAINER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.junit.TEST_KIND</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.VM_ARGUMENTS</launchAttrNames>
          <launchAttrValues></launchAttrValues>
          <launchAttrValues>org.eclipse.jdt.junit.loader.junit4</launchAttrValues>
          <launchAttrValues>inheritance.CargoCarTest</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>-ea</launchAttrValues>
          <consoleOutput></consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1523367110237" mode="run" className="inheritance.TrainTest">
          <launchAttrNames>org.eclipse.jdt.junit.CONTAINER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.junit.TEST_KIND</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.VM_ARGUMENTS</launchAttrNames>
          <launchAttrValues></launchAttrValues>
          <launchAttrValues>org.eclipse.jdt.junit.loader.junit4</launchAttrValues>
          <launchAttrValues>inheritance.TrainTest</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>-ea</launchAttrValues>
          <consoleOutput></consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1523367430148" mode="run" className="testing.AccountTest">
          <launchAttrNames>org.eclipse.jdt.junit.CONTAINER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.junit.TEST_KIND</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.VM_ARGUMENTS</launchAttrNames>
          <launchAttrValues></launchAttrValues>
          <launchAttrValues>org.eclipse.jdt.junit.loader.junit4</launchAttrValues>
          <launchAttrValues>testing.AccountTest</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>-ea</launchAttrValues>
          <consoleOutput></consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1523367447734" mode="run" className="testing.AccountTest">
          <launchAttrNames>org.eclipse.jdt.junit.CONTAINER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.junit.TEST_KIND</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.VM_ARGUMENTS</launchAttrNames>
          <launchAttrValues></launchAttrValues>
          <launchAttrValues>org.eclipse.jdt.junit.loader.junit4</launchAttrValues>
          <launchAttrValues>testing.AccountTest</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>-ea</launchAttrValues>
          <consoleOutput></consoleOutput>
        </attempts>
        <attempts xsi:type="jdt:JdtLaunchEvent" timestamp="1523367801903" mode="run" className="testing.CardTest">
          <launchAttrNames>org.eclipse.jdt.junit.CONTAINER</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.junit.TEST_KIND</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.MAIN_TYPE</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.PROJECT_ATTR</launchAttrNames>
          <launchAttrNames>org.eclipse.jdt.launching.VM_ARGUMENTS</launchAttrNames>
          <launchAttrValues></launchAttrValues>
          <launchAttrValues>org.eclipse.jdt.junit.loader.junit4</launchAttrValues>
          <launchAttrValues>testing.CardTest</launchAttrValues>
          <launchAttrValues>ovinger</launchAttrValues>
          <launchAttrValues>-ea</launchAttrValues>
          <consoleOutput></consoleOutput>
        </attempts>
      </proposals>
      <proposals xsi:type="junit:JunitTestProposal" question="/0/@parts.0/@tasks.2/@q" answer="/0/@parts.0/@tasks.2/@a">
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1519741855874" completion="0.3333333333333333" testRunName="debugging.StringMergingIteratorTest" successCount="1" failureCount="1" errorCount="1">
          <successTests>testMergeBothEmpty</successTests>
          <failureTests>testMergeLists</failureTests>
          <errorTests>testMergeOneEmpty</errorTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1519743272634" completion="1.0" testRunName="interfaces.CardComparatorTest" successCount="3">
          <successTests>testAceIsHighest</successTests>
          <successTests>testDiamondIsTrumph</successTests>
          <successTests>testNormal</successTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1519743276305" completion="1.0" testRunName="interfaces.CardContainerIteratorTest" successCount="1">
          <successTests>testCardContainerIterator</successTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1519743278541" completion="1.0" testRunName="interfaces.CardDeckTest" successCount="2">
          <successTests>testCardContainer</successTests>
          <successTests>testDeckIterator</successTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1519743280613" completion="1.0" testRunName="interfaces.CardHandTest" successCount="2">
          <successTests>testCardContainer</successTests>
          <successTests>testHandIterator</successTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1519743283762" completion="1.0" testRunName="interfaces.CardPredicateTest" successCount="3">
          <successTests>testGetCards</successTests>
          <successTests>testHasCard</successTests>
          <successTests>testGetCardCount</successTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1519743399885" completion="1.0" testRunName="interfaces.NamedComparatorTest" successCount="1">
          <successTests>testNamedComparator</successTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1519743408030" completion="1.0" testRunName="interfaces.Person1Test" successCount="1">
          <successTests>testPerson1</successTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1519743411808" completion="1.0" testRunName="interfaces.Person2Test" successCount="1">
          <successTests>testPerson2</successTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1519743559068" completion="0.8333333333333334" testRunName="interfaces.BinaryComputingIteratorTest" successCount="5" failureCount="1">
          <successTests>testComputeResultsMultiplication</successTests>
          <successTests>testComputeResultsWithEmptyIteratorAndDefault</successTests>
          <successTests>testComputeResultsAddition</successTests>
          <successTests>testComputeResultsWithShortIterator</successTests>
          <successTests>testComputeResultsWithEmptyIterator</successTests>
          <failureTests>testComputeResultsWithShortIteratorAndDefault</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1519743788022" completion="0.8333333333333334" testRunName="interfaces.BinaryComputingIteratorTest" successCount="5" failureCount="1">
          <successTests>testComputeResultsMultiplication</successTests>
          <successTests>testComputeResultsAddition</successTests>
          <successTests>testComputeResultsWithShortIterator</successTests>
          <successTests>testComputeResultsWithShortIteratorAndDefault</successTests>
          <successTests>testComputeResultsWithEmptyIterator</successTests>
          <failureTests>testComputeResultsWithEmptyIteratorAndDefault</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1519743874175" completion="1.0" testRunName="interfaces.BinaryComputingIteratorTest" successCount="6">
          <successTests>testComputeResultsMultiplication</successTests>
          <successTests>testComputeResultsWithEmptyIteratorAndDefault</successTests>
          <successTests>testComputeResultsAddition</successTests>
          <successTests>testComputeResultsWithShortIterator</successTests>
          <successTests>testComputeResultsWithShortIteratorAndDefault</successTests>
          <successTests>testComputeResultsWithEmptyIterator</successTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1523366823289" completion="1.0" testRunName="patterns.observable2.ObservableHighscoreListTest" successCount="7">
          <successTests>testAddElementSimple</successTests>
          <successTests>testAddElementDuplicate</successTests>
          <successTests>testListListenerSimple</successTests>
          <successTests>testListListenerDuplicate</successTests>
          <successTests>testAddElementMoreThanMax</successTests>
          <successTests>testListListenerMoreThanMax</successTests>
          <successTests>testConstructor</successTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1523367056652" completion="1.0" testRunName="inheritance.TrainCarTest" successCount="1">
          <successTests>testCheckWeight</successTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1523367060891" completion="1.0" testRunName="inheritance.PassengerCarTest" successCount="1">
          <successTests>testCheckWeight</successTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1523367063981" completion="1.0" testRunName="inheritance.CargoCarTest" successCount="1">
          <successTests>testCheckWeight</successTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1523367110768" completion="1.0" testRunName="inheritance.TrainTest" successCount="4">
          <successTests>testCheckTotalTrainWeight</successTests>
          <successTests>testCheckCargoWeight</successTests>
          <successTests>testCheckPassengerCount</successTests>
          <successTests>testAddCarToTrain</successTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1523367430556" completion="0.42857142857142855" testRunName="testing.AccountTest" successCount="3" failureCount="4">
          <successTests>testWithdrawNegative</successTests>
          <successTests>testWithdraw</successTests>
          <successTests>testDeposit</successTests>
          <failureTests>testAddInterest</failureTests>
          <failureTests>testSetInterestRate</failureTests>
          <failureTests>testWithdrawTooLarge</failureTests>
          <failureTests>testConstructor</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1523367448093" completion="0.42857142857142855" testRunName="testing.AccountTest" successCount="3" failureCount="4">
          <successTests>testWithdrawNegative</successTests>
          <successTests>testWithdraw</successTests>
          <successTests>testDeposit</successTests>
          <failureTests>testAddInterest</failureTests>
          <failureTests>testSetInterestRate</failureTests>
          <failureTests>testWithdrawTooLarge</failureTests>
          <failureTests>testConstructor</failureTests>
        </attempts>
        <attempts xsi:type="junit:JunitTestEvent" timestamp="1523367802288" completion="0.375" testRunName="testing.CardTest" successCount="3" failureCount="5">
          <successTests>testCardInvalidSuit</successTests>
          <successTests>testCard</successTests>
          <successTests>testCardToString</successTests>
          <failureTests>testCardInvalidFace</failureTests>
          <failureTests>testShufflePerfectly</failureTests>
          <failureTests>testGetCard</failureTests>
          <failureTests>testCardDeck</failureTests>
          <failureTests>testGetCardCount</failureTests>
        </attempts>
      </proposals>
    </proposals>
    <proposals exercisePart="/0/@parts.1">
      <proposals xsi:type="workbench:DebugEventProposal" question="/0/@parts.1/@tasks.0/@q" answer="/0/@parts.1/@tasks.0/@a">
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519741949397" elementId="java.util.ArrayList$Itr" action="suspend.breakpoint"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519741984574" elementId="java.util.ArrayList$Itr" action="suspend.breakpoint"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519741997239" elementId="debugging.StringMergingIteratorProgram" action="suspend.breakpoint"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519742006451" elementId="org.eclipse.xtext.xbase.lib.CollectionLiterals" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519742006624" elementId="com.google.common.collect.Lists" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519742021653" elementId="debugging.StringMergingIteratorProgram" action="suspend.breakpoint"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519742089642" elementId="debugging.StringMergingIteratorProgram" action="suspend.breakpoint"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519742110658" elementId="org.eclipse.xtext.xbase.lib.CollectionLiterals" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519742137433" elementId="org.eclipse.xtext.xbase.lib.CollectionLiterals" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519742152921" elementId="debugging.StringMergingIteratorProgram" action="suspend.breakpoint"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519742264558" elementId="debugging.StringMergingIteratorProgram" action="suspend.breakpoint"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519742270198" elementId="debugging.StringMergingIteratorProgram" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519742270198" elementId="debugging.StringMergingIteratorProgram" action="suspend.breakpoint"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519742280348" elementId="org.eclipse.xtext.xbase.lib.CollectionLiterals" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519742283275" elementId="org.eclipse.xtext.xbase.lib.CollectionLiterals" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519742315143" elementId="java.util.ArrayList$Itr" action="suspend.breakpoint"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519742382821" elementId="debugging.StringMergingIteratorProgram" action="suspend.breakpoint"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519742412581" elementId="debugging.StringMergingIteratorProgram" action="suspend.breakpoint"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519742421924" elementId="java.io.PrintStream" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519742432494" elementId="java.io.PrintStream" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519742435990" elementId="java.io.PrintStream" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519742437055" elementId="java.io.PrintStream" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519742448901" elementId="debugging.StringMergingIteratorProgram" action="suspend.breakpoint"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519742451927" elementId="debugging.StringMergingIteratorProgram" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519742451927" elementId="debugging.StringMergingIteratorProgram" action="suspend.breakpoint"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519742458930" elementId="org.eclipse.xtext.xbase.lib.CollectionLiterals" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519742459522" elementId="com.google.common.collect.Lists" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519743000934" elementId="org.eclipse.xtext.xbase.lib.CollectionLiterals" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519743970810" elementId="debugging.StringMergingIteratorProgram" action="suspend.breakpoint"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519744003324" elementId="debugging.StringMergingIteratorProgram" action="suspend.breakpoint"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519744012831" elementId="debugging.StringMergingIteratorProgram" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519744023569" elementId="debugging.StringMergingIteratorProgram" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519744032822" elementId="debugging.StringMergingIteratorProgram" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519744033643" elementId="debugging.StringMergingIteratorProgram" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519744034585" elementId="debugging.StringMergingIteratorProgram" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519744035260" elementId="debugging.StringMergingIterator" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519744114012" elementId="debugging.StringMergingIteratorProgram" action="suspend.breakpoint"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519744120289" elementId="debugging.StringMergingIteratorProgram" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519744128194" elementId="debugging.StringMergingIteratorProgram" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519744135522" elementId="org.eclipse.xtext.xbase.lib.CollectionLiterals" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519744136126" elementId="com.google.common.collect.Lists" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519744136275" elementId="com.google.common.base.Preconditions" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519744136420" elementId="com.google.common.base.Preconditions" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519744136576" elementId="com.google.common.collect.Lists" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519744136791" elementId="com.google.common.collect.Lists" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519744138946" elementId="org.eclipse.xtext.xbase.lib.CollectionLiterals" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519744140713" elementId="debugging.StringMergingIteratorProgram" action="suspend.stepEnd"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519744144821" elementId="debugging.StringMergingIteratorProgram" action="suspend.breakpoint"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519744157702" elementId="debugging.CoffeeCup" action="suspend.breakpoint"/>
      </proposals>
      <proposals xsi:type="workbench:CommandExecutionProposal" question="/0/@parts.1/@tasks.1/@q" answer="/0/@parts.1/@tasks.1/@a">
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519741970551" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519741991421" elementId="AUTOGEN:::org.eclipse.jdt.debug.CompilationUnitEditor.BreakpointRulerActions/org.eclipse.jdt.debug.ui.actions.ManageBreakpointRulerAction" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519741995009" elementId="org.eclipse.debug.ui.commands.Terminate" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519742003482" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519742006547" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519742040017" elementId="org.eclipse.ui.views.showView" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519742054011" elementId="org.eclipse.ui.views.showView" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519742054011" elementId="org.eclipse.ui.views.showView" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519742084902" elementId="AUTOGEN:::org.eclipse.jdt.debug.CompilationUnitEditor.BreakpointRulerActions/org.eclipse.jdt.debug.ui.actions.ManageBreakpointRulerAction" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519742086535" elementId="AUTOGEN:::org.eclipse.jdt.debug.CompilationUnitEditor.BreakpointRulerActions/org.eclipse.jdt.debug.ui.actions.ManageBreakpointRulerAction" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519742105544" elementId="org.eclipse.debug.ui.commands.ToggleStepFilters" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519742107736" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519742131638" elementId="org.eclipse.ui.edit.text.goto.wordPrevious" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519742134109" elementId="org.eclipse.ui.edit.text.goto.wordNext" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519742134470" elementId="org.eclipse.ui.edit.text.contentAssist.proposals" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519742137158" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519742220029" elementId="org.eclipse.ui.views.showView" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519742220029" elementId="org.eclipse.ui.views.showView" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519742257881" elementId="AUTOGEN:::org.eclipse.jdt.debug.CompilationUnitEditor.BreakpointRulerActions/org.eclipse.jdt.debug.ui.actions.ManageBreakpointRulerAction" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519742270186" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519742277379" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519742283272" elementId="org.eclipse.debug.ui.commands.DropToFrame" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519742309060" elementId="org.eclipse.jdt.debug.ui.commands.Execute" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519742315108" elementId="org.eclipse.debug.ui.commands.RunToLine" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519742326336" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519742417693" elementId="org.eclipse.debug.ui.commands.ToggleStepFilters" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519742421920" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519742432488" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519742435988" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519742437050" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519742440376" elementId="org.eclipse.debug.ui.commands.Terminate" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519742446938" elementId="org.eclipse.debug.ui.commands.ToggleStepFilters" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519742451922" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519742455937" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519742459444" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519743000759" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519743004860" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519743275947" elementId="org.eclipse.debug.ui.commands.RunLast" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519743278182" elementId="org.eclipse.debug.ui.commands.RunLast" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519743280139" elementId="org.eclipse.debug.ui.commands.RunLast" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519743283132" elementId="org.eclipse.debug.ui.commands.RunLast" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519743608283" elementId="org.eclipse.ui.edit.text.folding.collapse_all" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519743624466" elementId="org.eclipse.ui.edit.text.deletePreviousWord" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519743624638" elementId="org.eclipse.ui.edit.text.deletePreviousWord" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519743624783" elementId="org.eclipse.ui.edit.text.deletePreviousWord" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519743624921" elementId="org.eclipse.ui.edit.text.deletePreviousWord" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519743625380" elementId="org.eclipse.ui.edit.text.deletePreviousWord" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519743630498" elementId="org.eclipse.ui.edit.text.goto.wordPrevious" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519743630643" elementId="org.eclipse.ui.edit.text.goto.wordPrevious" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519743633047" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519743649112" elementId="org.eclipse.ui.edit.undo" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519743652827" elementId="org.eclipse.ui.edit.text.goto.wordNext" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519743652965" elementId="org.eclipse.ui.edit.text.goto.wordNext" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519743653158" elementId="org.eclipse.ui.edit.text.goto.wordNext" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519743653417" elementId="org.eclipse.ui.edit.text.deletePreviousWord" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519743653545" elementId="org.eclipse.ui.edit.text.deletePreviousWord" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519743653694" elementId="org.eclipse.ui.edit.text.deletePreviousWord" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519743670547" elementId="org.eclipse.ui.edit.text.goto.wordPrevious" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519743670695" elementId="org.eclipse.ui.edit.text.goto.wordPrevious" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519743670823" elementId="org.eclipse.ui.edit.text.goto.wordPrevious" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519743670948" elementId="org.eclipse.ui.edit.text.goto.wordPrevious" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519743671069" elementId="org.eclipse.ui.edit.text.goto.wordPrevious" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519743671193" elementId="org.eclipse.ui.edit.text.goto.wordPrevious" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519743671314" elementId="org.eclipse.ui.edit.text.goto.wordPrevious" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519743671435" elementId="org.eclipse.ui.edit.text.goto.wordPrevious" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519743671537" elementId="org.eclipse.ui.edit.text.goto.wordPrevious" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519743671666" elementId="org.eclipse.ui.edit.text.goto.wordPrevious" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519743673331" elementId="org.eclipse.ui.edit.text.goto.wordNext" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519743673459" elementId="org.eclipse.ui.edit.text.goto.wordNext" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519743673592" elementId="org.eclipse.ui.edit.text.goto.wordNext" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519743673705" elementId="org.eclipse.ui.edit.text.goto.wordNext" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519743673829" elementId="org.eclipse.ui.edit.text.goto.wordNext" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519743673950" elementId="org.eclipse.ui.edit.text.goto.wordNext" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519743674062" elementId="org.eclipse.ui.edit.text.goto.wordNext" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519743674189" elementId="org.eclipse.ui.edit.text.goto.wordNext" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519743674308" elementId="org.eclipse.ui.edit.text.goto.wordNext" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519743674437" elementId="org.eclipse.ui.edit.text.goto.wordNext" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519743694145" elementId="org.eclipse.ui.edit.copy" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519743695286" elementId="org.eclipse.ui.edit.text.goto.wordNext" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519743696605" elementId="org.eclipse.ui.edit.paste" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519743698877" elementId="org.eclipse.ui.edit.text.goto.wordNext" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519743699022" elementId="org.eclipse.ui.edit.text.goto.wordNext" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519743699151" elementId="org.eclipse.ui.edit.text.goto.wordNext" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519743699275" elementId="org.eclipse.ui.edit.text.goto.wordNext" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519743699391" elementId="org.eclipse.ui.edit.text.goto.wordNext" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519743699519" elementId="org.eclipse.ui.edit.text.goto.wordNext" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519743699642" elementId="org.eclipse.ui.edit.text.goto.wordNext" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519743700127" elementId="org.eclipse.ui.edit.text.goto.wordPrevious" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519743774396" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519743784574" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519743838814" elementId="org.eclipse.ui.edit.text.deletePreviousWord" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519743838971" elementId="org.eclipse.ui.edit.text.deletePreviousWord" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519743839131" elementId="org.eclipse.ui.edit.text.deletePreviousWord" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519743839471" elementId="org.eclipse.ui.edit.text.deletePreviousWord" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519743853521" elementId="org.eclipse.ui.edit.text.goto.wordPrevious" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519743853927" elementId="org.eclipse.ui.edit.text.goto.wordNext" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519743858512" elementId="org.eclipse.ui.edit.text.deletePreviousWord" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519743862144" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519743873775" elementId="org.eclipse.debug.ui.commands.RunLast" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519743936571" elementId="org.eclipse.ui.edit.text.delete.line" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519743937007" elementId="org.eclipse.ui.edit.text.delete.line" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519743955216" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519743990138" elementId="org.eclipse.ui.edit.text.deletePreviousWord" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519743991059" elementId="org.eclipse.ui.edit.text.contentAssist.proposals" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519743995007" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519743996346" elementId="AUTOGEN:::org.eclipse.jdt.debug.CompilationUnitEditor.BreakpointRulerActions/org.eclipse.jdt.debug.ui.actions.ManageBreakpointRulerAction" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519743999703" elementId="AUTOGEN:::org.eclipse.jdt.debug.CompilationUnitEditor.BreakpointRulerActions/org.eclipse.jdt.debug.ui.actions.ManageBreakpointRulerAction" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519744012791" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519744016296" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519744032780" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519744033551" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519744034580" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519744035256" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519744060388" elementId="org.eclipse.ui.views.showView" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519744060388" elementId="org.eclipse.ui.views.showView" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519744099982" elementId="org.eclipse.egit.ui.team.Discard" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519744120247" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519744120937" elementId="org.eclipse.debug.ui.commands.StepOver" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519744135515" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519744136120" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519744136269" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519744136416" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519744136571" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519744136786" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519744138939" elementId="org.eclipse.debug.ui.commands.StepReturn" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519744140706" elementId="org.eclipse.debug.ui.commands.StepReturn" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519744144458" elementId="org.eclipse.debug.ui.commands.TerminateAndRelaunch" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519744163296" elementId="org.eclipse.debug.ui.commands.StepInto" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519746973852" elementId="org.eclipse.ui.edit.text.folding.collapse_all" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519753614102" elementId="org.eclipse.egit.ui.team.Commit" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519822148480" elementId="org.eclipse.egit.ui.team.Pull" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519831585492" elementId="org.eclipse.ui.edit.text.copyLineDown" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519831585709" elementId="org.eclipse.ui.edit.text.scroll.lineUp" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519831587331" elementId="org.eclipse.ui.edit.text.goto.wordNext" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519831587515" elementId="org.eclipse.ui.edit.text.goto.wordNext" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519831587680" elementId="org.eclipse.ui.edit.text.goto.wordNext" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519831587851" elementId="org.eclipse.ui.edit.text.goto.wordNext" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519831588375" elementId="org.eclipse.ui.edit.text.goto.wordPrevious" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519831590121" elementId="org.eclipse.ui.edit.text.goto.wordNext" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519831590298" elementId="org.eclipse.ui.edit.text.goto.wordNext" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519831590499" elementId="org.eclipse.ui.edit.text.goto.wordNext" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519831590751" elementId="org.eclipse.ui.edit.text.goto.wordNext" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519831590952" elementId="org.eclipse.ui.edit.text.goto.wordNext" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519831591145" elementId="org.eclipse.ui.edit.text.goto.wordNext" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519831591306" elementId="org.eclipse.ui.edit.text.goto.wordNext" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519831591459" elementId="org.eclipse.ui.edit.text.goto.wordNext" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519831591610" elementId="org.eclipse.ui.edit.text.goto.wordNext" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519831591752" elementId="org.eclipse.ui.edit.text.goto.wordNext" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519831592374" elementId="org.eclipse.ui.edit.text.goto.wordNext" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519831592903" elementId="org.eclipse.ui.edit.text.goto.wordNext" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519831592941" elementId="org.eclipse.ui.edit.text.goto.wordNext" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519831592979" elementId="org.eclipse.ui.edit.text.goto.wordNext" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519831593017" elementId="org.eclipse.ui.edit.text.goto.wordNext" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519831593055" elementId="org.eclipse.ui.edit.text.goto.wordNext" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519831593090" elementId="org.eclipse.ui.edit.text.goto.wordNext" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519831593130" elementId="org.eclipse.ui.edit.text.goto.wordNext" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519831593167" elementId="org.eclipse.ui.edit.text.goto.wordNext" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519831593205" elementId="org.eclipse.ui.edit.text.goto.wordNext" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519831593240" elementId="org.eclipse.ui.edit.text.goto.wordNext" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519831593277" elementId="org.eclipse.ui.edit.text.goto.wordNext" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519831593314" elementId="org.eclipse.ui.edit.text.goto.wordNext" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519831638820" elementId="org.eclipse.ui.file.refresh" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519831650839" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519831656948" elementId="org.eclipse.ui.edit.undo" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519831660520" elementId="org.eclipse.ui.edit.text.delete.line" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519831661610" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519831673248" elementId="org.eclipse.jdt.ui.edit.text.java.toggle.comment" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519831673805" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519831676848" elementId="org.eclipse.debug.ui.commands.RunToLine" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519831723725" elementId="org.eclipse.ui.file.refresh" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519832436625" elementId="org.eclipse.ui.file.refresh" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519833196487" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519833199854" elementId="org.eclipse.jdt.ui.edit.text.java.toggle.comment" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519833200927" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519833274974" elementId="org.eclipse.jdt.debug.ui.localJavaShortcut.run" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519833353678" elementId="org.eclipse.fx.ide.ui.openwithsceneb" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1519833531373" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776213141" elementId="org.eclipse.ui.window.newEditor" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776219531" elementId="org.eclipse.ui.edit.text.deletePreviousWord" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776219696" elementId="org.eclipse.ui.edit.text.deletePreviousWord" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776219856" elementId="org.eclipse.ui.edit.text.deletePreviousWord" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776220002" elementId="org.eclipse.ui.edit.text.deletePreviousWord" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776220147" elementId="org.eclipse.ui.edit.text.deletePreviousWord" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776220498" elementId="org.eclipse.ui.edit.text.deletePreviousWord" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776224418" elementId="org.eclipse.ui.edit.text.contentAssist.proposals" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776240072" elementId="org.eclipse.ui.edit.text.copyLineDown" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776240212" elementId="org.eclipse.ui.edit.text.copyLineDown" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776240352" elementId="org.eclipse.ui.edit.text.copyLineDown" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776240498" elementId="org.eclipse.ui.edit.text.copyLineDown" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776240648" elementId="org.eclipse.ui.edit.text.copyLineDown" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776241596" elementId="org.eclipse.ui.edit.undo" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776241761" elementId="org.eclipse.ui.edit.undo" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776241951" elementId="org.eclipse.ui.edit.undo" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776242177" elementId="org.eclipse.ui.edit.undo" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776242407" elementId="org.eclipse.ui.edit.undo" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776249612" elementId="org.eclipse.ui.edit.text.copyLineDown" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776249868" elementId="org.eclipse.ui.edit.text.copyLineDown" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776250063" elementId="org.eclipse.ui.edit.text.copyLineDown" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776250563" elementId="org.eclipse.ui.edit.text.copyLineDown" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776250596" elementId="org.eclipse.ui.edit.text.copyLineDown" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776250629" elementId="org.eclipse.ui.edit.text.copyLineDown" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776250663" elementId="org.eclipse.ui.edit.text.copyLineDown" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776250695" elementId="org.eclipse.ui.edit.text.copyLineDown" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776250729" elementId="org.eclipse.ui.edit.text.copyLineDown" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776250762" elementId="org.eclipse.ui.edit.text.copyLineDown" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776256172" elementId="org.eclipse.ui.edit.text.contentAssist.proposals" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776257670" elementId="org.eclipse.ui.edit.text.goto.wordPrevious" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776257837" elementId="org.eclipse.ui.edit.text.goto.wordPrevious" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776259261" elementId="org.eclipse.ui.edit.text.deletePreviousWord" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776260573" elementId="org.eclipse.ui.edit.text.contentAssist.proposals" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776261871" elementId="org.eclipse.ui.edit.text.goto.wordPrevious" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776262122" elementId="org.eclipse.ui.edit.text.goto.wordPrevious" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776262647" elementId="org.eclipse.ui.edit.text.goto.wordNext" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776263001" elementId="org.eclipse.ui.edit.text.deletePreviousWord" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776264050" elementId="org.eclipse.ui.edit.text.contentAssist.proposals" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776265330" elementId="org.eclipse.ui.edit.text.goto.wordPrevious" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776266664" elementId="org.eclipse.ui.edit.text.deletePreviousWord" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776267664" elementId="org.eclipse.ui.edit.text.contentAssist.proposals" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776268798" elementId="org.eclipse.ui.edit.text.goto.wordPrevious" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776269796" elementId="org.eclipse.ui.edit.text.deletePreviousWord" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776271684" elementId="org.eclipse.ui.edit.text.contentAssist.proposals" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776272823" elementId="org.eclipse.ui.edit.text.goto.wordPrevious" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776273241" elementId="org.eclipse.ui.edit.text.deletePreviousWord" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776274075" elementId="org.eclipse.ui.edit.text.contentAssist.proposals" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776275728" elementId="org.eclipse.ui.edit.text.goto.wordPrevious" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776281358" elementId="org.eclipse.ui.edit.undo" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776281542" elementId="org.eclipse.ui.edit.undo" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776281707" elementId="org.eclipse.ui.edit.undo" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776282218" elementId="org.eclipse.ui.edit.undo" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776282241" elementId="org.eclipse.ui.edit.undo" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776282271" elementId="org.eclipse.ui.edit.undo" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776282317" elementId="org.eclipse.ui.edit.undo" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776282340" elementId="org.eclipse.ui.edit.undo" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776282372" elementId="org.eclipse.ui.edit.undo" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776282417" elementId="org.eclipse.ui.edit.undo" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776282439" elementId="org.eclipse.ui.edit.undo" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776282471" elementId="org.eclipse.ui.edit.undo" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776282515" elementId="org.eclipse.ui.edit.undo" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776282537" elementId="org.eclipse.ui.edit.undo" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776282571" elementId="org.eclipse.ui.edit.undo" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776282614" elementId="org.eclipse.ui.edit.undo" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776282638" elementId="org.eclipse.ui.edit.undo" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776282670" elementId="org.eclipse.ui.edit.undo" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776287537" elementId="org.eclipse.ui.edit.text.goto.wordNext" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776287683" elementId="org.eclipse.ui.edit.text.goto.wordNext" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776287837" elementId="org.eclipse.ui.edit.text.goto.wordNext" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776287999" elementId="org.eclipse.ui.edit.text.goto.wordNext" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776288144" elementId="org.eclipse.ui.edit.text.goto.wordNext" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776288359" elementId="org.eclipse.ui.edit.text.goto.wordNext" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776290114" elementId="org.eclipse.ui.edit.text.contentAssist.proposals" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776292068" elementId="org.eclipse.ui.edit.text.copyLineDown" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776292403" elementId="org.eclipse.ui.edit.text.copyLineDown" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776292550" elementId="org.eclipse.ui.edit.text.copyLineDown" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776292700" elementId="org.eclipse.ui.edit.text.copyLineDown" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776292845" elementId="org.eclipse.ui.edit.text.copyLineDown" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776292991" elementId="org.eclipse.ui.edit.text.copyLineDown" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776293131" elementId="org.eclipse.ui.edit.text.copyLineDown" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776293267" elementId="org.eclipse.ui.edit.text.copyLineDown" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776297165" elementId="org.eclipse.ui.edit.text.contentAssist.proposals" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776298463" elementId="org.eclipse.ui.edit.text.goto.wordPrevious" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776298633" elementId="org.eclipse.ui.edit.text.goto.wordPrevious" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776298974" elementId="org.eclipse.ui.edit.text.goto.wordNext" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776299298" elementId="org.eclipse.ui.edit.text.deletePreviousWord" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776301048" elementId="org.eclipse.ui.edit.text.contentAssist.proposals" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776303924" elementId="org.eclipse.ui.edit.text.deletePreviousWord" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776305889" elementId="org.eclipse.ui.edit.text.contentAssist.proposals" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776307108" elementId="org.eclipse.ui.edit.text.goto.wordPrevious" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776308002" elementId="org.eclipse.ui.edit.text.deletePreviousWord" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776309655" elementId="org.eclipse.ui.edit.text.contentAssist.proposals" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776311482" elementId="org.eclipse.ui.edit.text.deletePreviousWord" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776313280" elementId="org.eclipse.ui.edit.text.contentAssist.proposals" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776315766" elementId="org.eclipse.ui.edit.text.deletePreviousWord" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776316943" elementId="org.eclipse.ui.edit.text.contentAssist.proposals" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776318285" elementId="org.eclipse.ui.edit.text.goto.wordPrevious" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776318575" elementId="org.eclipse.ui.edit.text.goto.wordPrevious" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776319288" elementId="org.eclipse.ui.edit.text.goto.wordNext" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776320267" elementId="org.eclipse.ui.edit.text.deletePreviousWord" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776322879" elementId="org.eclipse.ui.edit.text.deletePreviousWord" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776326105" elementId="org.eclipse.ui.edit.text.delete.line" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776327032" elementId="org.eclipse.ui.edit.text.delete.line" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776330870" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776339046" elementId="org.eclipse.ui.edit.text.contentAssist.proposals" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776341239" elementId="org.eclipse.ui.edit.text.goto.wordPrevious" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776342200" elementId="org.eclipse.ui.edit.text.deletePreviousWord" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776343742" elementId="org.eclipse.ui.edit.text.contentAssist.proposals" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776344482" elementId="org.eclipse.ui.edit.text.deletePreviousWord" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776344629" elementId="org.eclipse.ui.edit.text.deletePreviousWord" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776346633" elementId="org.eclipse.ui.edit.text.contentAssist.proposals" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776348567" elementId="org.eclipse.ui.edit.text.goto.wordPrevious" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776349561" elementId="org.eclipse.ui.edit.text.deletePreviousWord" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776350764" elementId="org.eclipse.ui.edit.text.copyLineDown" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776350945" elementId="org.eclipse.ui.edit.text.copyLineDown" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776351114" elementId="org.eclipse.ui.edit.text.copyLineDown" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776352185" elementId="org.eclipse.ui.edit.text.goto.wordNext" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776352352" elementId="org.eclipse.ui.edit.text.goto.wordNext" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776352516" elementId="org.eclipse.ui.edit.text.goto.wordNext" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776352872" elementId="org.eclipse.ui.edit.text.goto.wordNext" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776355108" elementId="org.eclipse.ui.edit.text.contentAssist.proposals" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776356506" elementId="org.eclipse.ui.edit.text.goto.wordPrevious" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776359767" elementId="org.eclipse.ui.edit.text.contentAssist.proposals" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776360996" elementId="org.eclipse.ui.edit.text.goto.wordPrevious" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776361142" elementId="org.eclipse.ui.edit.text.goto.wordPrevious" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776361313" elementId="org.eclipse.ui.edit.text.goto.wordPrevious" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776367978" elementId="org.eclipse.ui.edit.text.contentAssist.proposals" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776370149" elementId="org.eclipse.ui.edit.text.goto.wordPrevious" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776370310" elementId="org.eclipse.ui.edit.text.goto.wordPrevious" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776370460" elementId="org.eclipse.ui.edit.text.goto.wordPrevious" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776377141" elementId="org.eclipse.ui.edit.text.delete.line" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776382690" elementId="org.eclipse.ui.edit.text.deletePreviousWord" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776427067" elementId="org.eclipse.ui.edit.text.copyLineDown" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776427561" elementId="org.eclipse.ui.edit.text.goto.wordNext" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776427715" elementId="org.eclipse.ui.edit.text.goto.wordNext" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776427847" elementId="org.eclipse.ui.edit.text.goto.wordNext" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776427987" elementId="org.eclipse.ui.edit.text.goto.wordNext" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776428122" elementId="org.eclipse.ui.edit.text.goto.wordNext" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776428515" elementId="org.eclipse.ui.edit.text.deletePreviousWord" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776430476" elementId="org.eclipse.ui.edit.text.moveLineDown" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776430612" elementId="org.eclipse.ui.edit.text.moveLineDown" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776431112" elementId="org.eclipse.ui.edit.text.moveLineDown" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776431145" elementId="org.eclipse.ui.edit.text.moveLineDown" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776431178" elementId="org.eclipse.ui.edit.text.moveLineDown" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776431211" elementId="org.eclipse.ui.edit.text.moveLineDown" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776431244" elementId="org.eclipse.ui.edit.text.moveLineDown" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776431277" elementId="org.eclipse.ui.edit.text.moveLineDown" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776431309" elementId="org.eclipse.ui.edit.text.moveLineDown" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776431343" elementId="org.eclipse.ui.edit.text.moveLineDown" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776431609" elementId="org.eclipse.ui.edit.text.moveLineDown" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776433676" elementId="org.eclipse.ui.edit.text.delete.line" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776434242" elementId="org.eclipse.ui.edit.text.delete.line" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776547862" elementId="org.eclipse.ui.edit.text.goto.wordPrevious" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776548338" elementId="org.eclipse.ui.edit.text.goto.wordPrevious" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776548729" elementId="org.eclipse.ui.edit.text.goto.wordPrevious" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776549441" elementId="org.eclipse.ui.edit.text.goto.wordNext" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776549747" elementId="org.eclipse.ui.edit.text.goto.wordNext" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776550774" elementId="org.eclipse.ui.edit.text.goto.wordNext" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776568625" elementId="org.eclipse.ui.edit.text.moveLineDown" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776569182" elementId="org.eclipse.ui.edit.text.moveLineDown" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776578815" elementId="org.eclipse.ui.edit.text.smartEnterInverse" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776581148" elementId="org.eclipse.ui.edit.text.contentAssist.proposals" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776592746" elementId="org.eclipse.ui.edit.text.copyLineDown" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776593255" elementId="org.eclipse.ui.edit.text.goto.wordNext" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776593416" elementId="org.eclipse.ui.edit.text.goto.wordNext" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776593556" elementId="org.eclipse.ui.edit.text.goto.wordNext" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776594009" elementId="org.eclipse.ui.edit.text.deletePreviousWord" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776595020" elementId="org.eclipse.ui.edit.text.goto.wordNext" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776595170" elementId="org.eclipse.ui.edit.text.goto.wordNext" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776595330" elementId="org.eclipse.ui.edit.text.goto.wordNext" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776595466" elementId="org.eclipse.ui.edit.text.goto.wordNext" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776595656" elementId="org.eclipse.ui.edit.text.goto.wordNext" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776595882" elementId="org.eclipse.ui.edit.text.goto.wordNext" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776596223" elementId="org.eclipse.ui.edit.text.goto.wordPrevious" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776596605" elementId="org.eclipse.ui.edit.text.deletePreviousWord" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776597996" elementId="org.eclipse.ui.edit.text.contentAssist.proposals" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776599039" elementId="org.eclipse.ui.edit.text.goto.wordNext" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776599373" elementId="org.eclipse.ui.edit.text.deletePreviousWord" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776600321" elementId="org.eclipse.ui.edit.text.contentAssist.proposals" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776607798" elementId="org.eclipse.ui.edit.text.moveLineUp" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776607948" elementId="org.eclipse.ui.edit.text.moveLineUp" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776608105" elementId="org.eclipse.ui.edit.text.moveLineUp" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776608244" elementId="org.eclipse.ui.edit.text.moveLineUp" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776608389" elementId="org.eclipse.ui.edit.text.moveLineUp" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776608681" elementId="org.eclipse.ui.edit.text.moveLineUp" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776610571" elementId="org.eclipse.ui.edit.text.goto.wordNext" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776610832" elementId="org.eclipse.ui.edit.text.goto.wordNext" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776611058" elementId="org.eclipse.ui.edit.text.goto.wordNext" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776611403" elementId="org.eclipse.ui.edit.text.goto.wordNext" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776612341" elementId="org.eclipse.ui.edit.text.goto.wordNext" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776612827" elementId="org.eclipse.ui.edit.text.goto.wordNext" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776613148" elementId="org.eclipse.ui.edit.text.goto.wordNext" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776613373" elementId="org.eclipse.ui.edit.text.goto.wordNext" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776621002" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776626973" elementId="org.eclipse.ui.edit.text.delete.line" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776628347" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776651402" elementId="org.eclipse.ui.edit.text.delete.line" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776651570" elementId="org.eclipse.ui.edit.text.delete.line" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776654735" elementId="org.eclipse.ui.edit.text.folding.expand_all" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776664027" elementId="org.eclipse.ui.edit.text.deletePreviousWord" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776664419" elementId="org.eclipse.ui.edit.text.deletePreviousWord" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776671966" elementId="org.eclipse.ui.edit.text.deletePreviousWord" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776685030" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776688495" elementId="org.eclipse.ui.edit.text.delete.line" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776688705" elementId="org.eclipse.ui.edit.text.delete.line" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776690822" elementId="org.eclipse.ui.edit.text.delete.line" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776694282" elementId="org.eclipse.ui.edit.text.delete.line" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776694374" elementId="org.eclipse.ui.edit.text.delete.line" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776695285" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776705640" elementId="org.eclipse.ui.edit.text.delete.line" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776705794" elementId="org.eclipse.ui.edit.text.delete.line" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776706086" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520776986809" elementId="org.eclipse.ui.edit.text.deletePreviousWord" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1520778117813" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1523366822759" elementId="org.eclipse.debug.ui.commands.RunLast" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1523366869961" elementId="org.eclipse.ui.edit.text.folding.expand_all" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1523366903180" elementId="org.eclipse.ui.edit.text.folding.expand_all" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1523366941691" elementId="org.eclipse.ui.edit.text.folding.expand_all" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1523367029899" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1523367030164" elementId="org.eclipse.debug.ui.commands.RunLast" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1523367035680" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1523367035946" elementId="org.eclipse.debug.ui.commands.RunLast" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1523367056219" elementId="org.eclipse.debug.ui.commands.RunLast" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1523367060387" elementId="org.eclipse.debug.ui.commands.RunLast" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1523367063572" elementId="org.eclipse.debug.ui.commands.RunLast" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1523367088594" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1523367097545" elementId="org.eclipse.ui.edit.text.folding.expand_all" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1523367107702" elementId="org.eclipse.ui.edit.undo" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1523367107843" elementId="org.eclipse.ui.edit.undo" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1523367108375" elementId="org.eclipse.ui.edit.undo" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1523367108406" elementId="org.eclipse.ui.edit.undo" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1523367109397" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1523367110237" elementId="org.eclipse.debug.ui.commands.RunLast" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1523367117571" elementId="org.eclipse.ui.edit.text.folding.collapse_all" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1523367359567" elementId="org.eclipse.jdt.ui.edit.text.java.open.editor" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1523367430148" elementId="org.eclipse.debug.ui.commands.RunLast" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1523367447734" elementId="org.eclipse.debug.ui.commands.RunLast" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1523367608858" elementId="org.eclipse.ui.edit.text.folding.expand_all" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1523367626108" elementId="org.eclipse.jdt.ui.edit.text.java.open.editor" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1523367628435" elementId="org.eclipse.jdt.ui.edit.text.java.open.editor" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1523367755463" elementId="org.eclipse.jdt.ui.edit.text.java.open.editor" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1523367792900" elementId="org.eclipse.ui.edit.text.folding.collapse_all" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1523367801276" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1523367801903" elementId="org.eclipse.debug.ui.commands.RunLast" action="executeSuccess"/>
        <attempts xsi:type="workbench:WorkbenchTaskEvent" timestamp="1523367852967" elementId="org.eclipse.ui.file.save" action="executeSuccess"/>
      </proposals>
      <proposals xsi:type="workbench:PartTaskProposal" question="/0/@parts.1/@tasks.2/@q" answer="/0/@parts.1/@tasks.2/@a">
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519741852519" elementId="no.hal.learning.exercise.presentation.ExerciseEditorID" action="opened" inputUri="platform:/resource/ovinger/tests/debugging/StringMergingIterator.ex"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519741852532" elementId="no.hal.learning.exercise.presentation.ExerciseEditorID" action="broughtToTop" inputUri="platform:/resource/ovinger/tests/debugging/StringMergingIterator.ex"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519741852541" elementId="org.eclipse.jdt.ui.PackageExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519741852586" elementId="no.hal.learning.exercise.presentation.ExerciseEditorID" action="activated" inputUri="platform:/resource/ovinger/tests/debugging/StringMergingIterator.ex"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519741853478" elementId="no.hal.learning.exercise.presentation.ExerciseEditorID" action="deactivated" inputUri="platform:/resource/ovinger/tests/debugging/StringMergingIterator.ex"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519741853494" elementId="org.eclipse.jdt.ui.PackageExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519741853692" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/tests/debugging/StringMergingIteratorTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519741853696" elementId="org.eclipse.jdt.ui.PackageExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519741853737" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/tests/debugging/StringMergingIteratorTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519741856616" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/tests/debugging/StringMergingIteratorTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519741856677" elementId="net.sourceforge.plantuml.eclipse.views.PlantUmlView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519741856843" elementId="net.sourceforge.plantuml.eclipse.views.PlantUmlView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519741856881" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/tests/debugging/StringMergingIteratorTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519741856938" elementId="net.sourceforge.plantuml.eclipse.views.PlantUmlView" action="closed"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519741867230" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/tests/debugging/StringMergingIteratorTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519741867243" elementId="org.eclipse.jdt.ui.PackageExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519741870818" elementId="no.hal.learning.exercise.presentation.ExerciseEditorID" action="broughtToTop" inputUri="platform:/resource/ovinger/tests/debugging/StringMergingIterator.ex"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519741870823" elementId="org.eclipse.jdt.ui.PackageExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519741870840" elementId="no.hal.learning.exercise.presentation.ExerciseEditorID" action="activated" inputUri="platform:/resource/ovinger/tests/debugging/StringMergingIterator.ex"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519741872215" elementId="no.hal.learning.exercise.presentation.ExerciseEditorID" action="deactivated" inputUri="platform:/resource/ovinger/tests/debugging/StringMergingIterator.ex"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519741872228" elementId="org.eclipse.jdt.ui.PackageExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519741872410" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/tests/debugging/StringMergingIteratorTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519741872414" elementId="org.eclipse.jdt.ui.PackageExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519741872453" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/tests/debugging/StringMergingIteratorTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519741895264" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/tests/debugging/StringMergingIteratorTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519741895279" elementId="org.eclipse.jdt.ui.PackageExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519741897124" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="opened" inputUri="platform:/resource/ovinger/src/debugging/StringMergingIterator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519741897125" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/debugging/StringMergingIterator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519741897136" elementId="org.eclipse.jdt.ui.PackageExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519741897176" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/debugging/StringMergingIterator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519741922256" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/debugging/StringMergingIterator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519741922268" elementId="org.eclipse.jdt.ui.PackageExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519741922476" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="opened" inputUri="platform:/resource/ovinger/src/debugging/StringMergingIteratorProgram.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519741922477" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/debugging/StringMergingIteratorProgram.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519741922489" elementId="org.eclipse.jdt.ui.PackageExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519741922533" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/debugging/StringMergingIteratorProgram.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519741930974" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/debugging/StringMergingIteratorProgram.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519741930988" elementId="org.eclipse.jdt.ui.PackageExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519741931169" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/debugging/StringMergingIterator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519741931176" elementId="org.eclipse.jdt.ui.PackageExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519741931219" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/debugging/StringMergingIterator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519741935450" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/debugging/StringMergingIterator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519741935463" elementId="org.eclipse.jdt.ui.PackageExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519741935650" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/debugging/StringMergingIteratorProgram.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519741935656" elementId="org.eclipse.jdt.ui.PackageExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519741935696" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/debugging/StringMergingIteratorProgram.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519741949550" elementId="org.eclipse.debug.ui.DebugView" action="opened"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519741949560" elementId="org.eclipse.debug.ui.DebugView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519741950452" elementId="org.eclipse.debug.ui.VariableView" action="opened"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519741950455" elementId="org.eclipse.debug.ui.VariableView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519741950551" elementId="org.eclipse.debug.ui.BreakpointView" action="opened"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519741950553" elementId="org.eclipse.debug.ui.BreakpointView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519741957329" elementId="org.eclipse.ui.views.ContentOutline" action="opened"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519742017774" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="closed" inputUri="platform:/resource/ovinger/src/interfaces/twitter/TwitterAccount.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519742017816" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="closed" inputUri="platform:/resource/ovinger/src/interfaces/Named.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519742017859" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="closed" inputUri="platform:/resource/ovinger/src/interfaces/Person1.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519742017909" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="closed" inputUri="platform:/resource/ovinger/src/interfaces/Person2.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519742017968" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="closed" inputUri="platform:/resource/ovinger/src/objectstructures/Partner.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519742017987" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="closed" inputUri="platform:/resource/ovinger/src/objectstructures/CardHand.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519742018008" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="closed" inputUri="platform:/resource/ovinger/src/interfaces/CardHand.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519742018025" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="closed" inputUri="platform:/resource/ovinger/src/interfaces/NamedComparator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519742018042" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="closed" inputUri="platform:/resource/ovinger/tests/interfaces/Person1Test.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519742018061" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="closed" inputUri="platform:/resource/ovinger/tests/interfaces/Person2Test.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519742018091" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="closed" inputUri="platform:/resource/ovinger/src/interfaces/BinaryComputingIterator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519742018125" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="closed" inputUri="platform:/resource/ovinger/tests/interfaces/BinaryComputingIteratorTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519742018143" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="closed" inputUri="platform:/resource/ovinger/tests/debugging/StringMergingIteratorTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519742018169" elementId="no.hal.learning.exercise.presentation.ExerciseEditorID" action="closed" inputUri="platform:/resource/ovinger/tests/debugging/StringMergingIterator.ex"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519742018181" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="closed" inputUri="platform:/resource/ovinger/src/debugging/StringMergingIterator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519742018191" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/debugging/StringMergingIteratorProgram.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519742018218" elementId="org.eclipse.ui.console.ConsoleView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519742018245" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="closed" inputUri="platform:/resource/ovinger/src/debugging/StringMergingIteratorProgram.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519742024738" elementId="org.eclipse.ui.console.ConsoleView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519742024746" elementId="org.eclipse.debug.ui.DebugView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519742039860" elementId="org.eclipse.debug.ui.DebugView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519742039940" elementId="org.eclipse.jdt.debug.ui.DisplayView" action="opened"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519742039943" elementId="org.eclipse.jdt.debug.ui.DisplayView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519742040012" elementId="org.eclipse.jdt.debug.ui.DisplayView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519742042439" elementId="org.eclipse.ui.console.ConsoleView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519742042442" elementId="org.eclipse.jdt.debug.ui.DisplayView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519742042444" elementId="org.eclipse.ui.console.ConsoleView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519742042469" elementId="org.eclipse.ui.console.ConsoleView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519742042490" elementId="org.eclipse.debug.ui.DebugView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519742042503" elementId="org.eclipse.jdt.debug.ui.DisplayView" action="closed"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519742053871" elementId="org.eclipse.debug.ui.DebugView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519742053971" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="opened"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519742053973" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519742054006" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519742060900" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="opened" inputUri="platform:/resource/ovinger/src/debugging/StringMergingIterator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519742060924" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/debugging/StringMergingIterator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519742060976" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519742061018" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/debugging/StringMergingIterator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519742065918" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/debugging/StringMergingIterator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519742065934" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519742068524" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="opened" inputUri="platform:/resource/ovinger/src/debugging/StringMergingIteratorProgram.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519742068525" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/debugging/StringMergingIteratorProgram.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519742068591" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519742068640" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/debugging/StringMergingIteratorProgram.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519742069573" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/debugging/StringMergingIteratorProgram.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519742069619" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519742069745" elementId="org.eclipse.debug.ui.DebugView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519742069748" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519742069752" elementId="org.eclipse.debug.ui.DebugView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519742069783" elementId="org.eclipse.debug.ui.DebugView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519742069826" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/debugging/StringMergingIteratorProgram.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519742069843" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="closed"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519742072332" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/debugging/StringMergingIteratorProgram.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519742072349" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/debugging/StringMergingIterator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519742072384" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/debugging/StringMergingIterator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519742077757" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/debugging/StringMergingIterator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519742077776" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/debugging/StringMergingIteratorProgram.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519742077808" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/debugging/StringMergingIteratorProgram.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519742100734" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/debugging/StringMergingIteratorProgram.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519742100745" elementId="org.eclipse.debug.ui.DebugView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519742129217" elementId="org.eclipse.debug.ui.DebugView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519742129246" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/debugging/StringMergingIteratorProgram.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519742144215" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/debugging/StringMergingIteratorProgram.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519742144226" elementId="org.eclipse.debug.ui.DebugView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519742219956" elementId="org.eclipse.debug.ui.DebugView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519742219982" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="opened"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519742219985" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519742220024" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519742229496" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="opened" inputUri="platform:/resource/ovinger/src/interfaces/CardContainer.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519742229498" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/interfaces/CardContainer.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519742229547" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519742229580" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/interfaces/CardContainer.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519742249608" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/debugging/StringMergingIteratorProgram.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519742249633" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/interfaces/CardContainer.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519742249662" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/debugging/StringMergingIteratorProgram.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519742249697" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="closed" inputUri="platform:/resource/ovinger/src/interfaces/CardContainer.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519742264587" elementId="org.eclipse.debug.ui.DebugView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519742275054" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/debugging/StringMergingIteratorProgram.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519742275075" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/debugging/StringMergingIterator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519742275110" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/debugging/StringMergingIterator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519742287272" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/debugging/StringMergingIterator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519742287284" elementId="org.eclipse.debug.ui.DebugView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519742297831" elementId="org.eclipse.debug.ui.DebugView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519742297871" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/debugging/StringMergingIterator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519742298778" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/debugging/StringMergingIterator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519742298800" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/debugging/StringMergingIteratorProgram.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519742298836" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/debugging/StringMergingIteratorProgram.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519742322325" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/debugging/StringMergingIteratorProgram.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519742322726" elementId="org.eclipse.ui.views.ContentOutline" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519742322766" elementId="org.eclipse.ui.views.ContentOutline" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519742322804" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/debugging/StringMergingIteratorProgram.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519742339817" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/debugging/StringMergingIteratorProgram.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519742339831" elementId="org.eclipse.ui.console.ConsoleView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519742340093" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/debugging/StringMergingIterator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519742340120" elementId="org.eclipse.ui.console.ConsoleView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519742340156" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/debugging/StringMergingIterator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519742348746" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/debugging/StringMergingIterator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519742348757" elementId="org.eclipse.ui.console.ConsoleView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519742349048" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/debugging/StringMergingIteratorProgram.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519742349074" elementId="org.eclipse.ui.console.ConsoleView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519742349113" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/debugging/StringMergingIteratorProgram.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519742350538" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/debugging/StringMergingIteratorProgram.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519742350550" elementId="org.eclipse.ui.console.ConsoleView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519742350827" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/debugging/StringMergingIterator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519742350854" elementId="org.eclipse.ui.console.ConsoleView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519742350891" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/debugging/StringMergingIterator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519742352981" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/debugging/StringMergingIterator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519742352990" elementId="org.eclipse.ui.console.ConsoleView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519742353276" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/debugging/StringMergingIteratorProgram.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519742353304" elementId="org.eclipse.ui.console.ConsoleView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519742353344" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/debugging/StringMergingIteratorProgram.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519742388239" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/debugging/StringMergingIteratorProgram.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519742388258" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/debugging/StringMergingIterator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519742388290" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/debugging/StringMergingIterator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519742394621" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/debugging/StringMergingIterator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519742394633" elementId="org.eclipse.debug.ui.DebugView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519742424190" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/debugging/StringMergingIteratorProgram.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519742424250" elementId="org.eclipse.debug.ui.DebugView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519742424296" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/debugging/StringMergingIteratorProgram.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519742441700" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/debugging/StringMergingIteratorProgram.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519742441710" elementId="org.eclipse.debug.ui.DebugView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519742992521" elementId="org.eclipse.debug.ui.DebugView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519742992553" elementId="org.eclipse.debug.ui.BreakpointView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519742992758" elementId="org.eclipse.debug.ui.BreakpointView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519742992791" elementId="org.eclipse.debug.ui.DebugView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519742994999" elementId="org.eclipse.ui.console.ConsoleView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519742995004" elementId="org.eclipse.debug.ui.DebugView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519742995008" elementId="org.eclipse.ui.console.ConsoleView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519742995036" elementId="org.eclipse.ui.console.ConsoleView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519742995074" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/debugging/StringMergingIteratorProgram.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743006239" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="closed" inputUri="platform:/resource/ovinger/src/debugging/StringMergingIterator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743007615" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/debugging/StringMergingIteratorProgram.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743007656" elementId="org.eclipse.ui.console.ConsoleView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743007683" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="closed" inputUri="platform:/resource/ovinger/src/debugging/StringMergingIteratorProgram.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743010172" elementId="org.eclipse.ui.console.ConsoleView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743010221" elementId="org.eclipse.debug.ui.VariableView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743010270" elementId="org.eclipse.debug.ui.VariableView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743010304" elementId="org.eclipse.ui.console.ConsoleView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743017850" elementId="org.eclipse.ui.console.ConsoleView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743017862" elementId="org.eclipse.jdt.ui.PackageExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743030011" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="opened" inputUri="platform:/resource/ovinger/src/objectstructures/TwitterAccount.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743030040" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/objectstructures/TwitterAccount.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743030079" elementId="org.eclipse.jdt.ui.PackageExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743030124" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/objectstructures/TwitterAccount.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743031458" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/objectstructures/TwitterAccount.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743031472" elementId="org.eclipse.jdt.ui.PackageExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743193500" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="opened" inputUri="platform:/resource/ovinger/src/interfaces/CardContainer.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743193500" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/interfaces/CardContainer.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743193535" elementId="org.eclipse.jdt.ui.PackageExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743193587" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/interfaces/CardContainer.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743212197" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/interfaces/CardContainer.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743212235" elementId="org.eclipse.jdt.ui.PackageExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743212402" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="opened" inputUri="platform:/resource/ovinger/src/interfaces/CardDeck.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743212402" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/interfaces/CardDeck.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743212438" elementId="org.eclipse.jdt.ui.PackageExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743212488" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/interfaces/CardDeck.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743214554" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/interfaces/CardDeck.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743214593" elementId="org.eclipse.jdt.ui.PackageExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743214788" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="opened" inputUri="platform:/resource/ovinger/src/interfaces/CardHand.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743214790" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/interfaces/CardHand.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743214845" elementId="org.eclipse.jdt.ui.PackageExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743214913" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/interfaces/CardHand.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743228934" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/interfaces/CardHand.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743228971" elementId="org.eclipse.jdt.ui.PackageExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743229166" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="opened" inputUri="platform:/resource/ovinger/src/interfaces/CardContainerIterator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743229167" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/interfaces/CardContainerIterator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743229200" elementId="org.eclipse.jdt.ui.PackageExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743229252" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/interfaces/CardContainerIterator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743264150" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/interfaces/CardContainerIterator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743264199" elementId="org.eclipse.jdt.ui.PackageExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743264388" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="opened" inputUri="platform:/resource/ovinger/src/interfaces/CardComparator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743264389" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/interfaces/CardComparator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743264423" elementId="org.eclipse.jdt.ui.PackageExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743264491" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/interfaces/CardComparator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743267513" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/interfaces/CardComparator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743267539" elementId="org.eclipse.jdt.ui.PackageExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743270120" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="opened" inputUri="platform:/resource/ovinger/tests/interfaces/CardComparatorTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743270121" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/tests/interfaces/CardComparatorTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743270159" elementId="org.eclipse.jdt.ui.PackageExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743270210" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/tests/interfaces/CardComparatorTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743272603" elementId="org.eclipse.jdt.junit.ResultView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743274075" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/tests/interfaces/CardComparatorTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743274111" elementId="org.eclipse.jdt.ui.PackageExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743274307" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="opened" inputUri="platform:/resource/ovinger/tests/interfaces/CardContainerIteratorTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743274308" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/tests/interfaces/CardContainerIteratorTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743274344" elementId="org.eclipse.jdt.ui.PackageExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743274394" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/tests/interfaces/CardContainerIteratorTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743277384" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/tests/interfaces/CardContainerIteratorTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743277425" elementId="org.eclipse.jdt.ui.PackageExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743277622" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="opened" inputUri="platform:/resource/ovinger/tests/interfaces/CardDeckTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743277623" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/tests/interfaces/CardDeckTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743277659" elementId="org.eclipse.jdt.ui.PackageExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743277707" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/tests/interfaces/CardDeckTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743279411" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/tests/interfaces/CardDeckTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743279458" elementId="org.eclipse.jdt.ui.PackageExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743279639" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="opened" inputUri="platform:/resource/ovinger/tests/interfaces/CardHandTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743279640" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/tests/interfaces/CardHandTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743279681" elementId="org.eclipse.jdt.ui.PackageExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743279733" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/tests/interfaces/CardHandTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743281385" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/tests/interfaces/CardHandTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743281420" elementId="org.eclipse.jdt.ui.PackageExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743281625" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="opened" inputUri="platform:/resource/ovinger/tests/interfaces/CardPredicateTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743281627" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/tests/interfaces/CardPredicateTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743281669" elementId="org.eclipse.jdt.ui.PackageExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743281747" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/tests/interfaces/CardPredicateTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743291924" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/tests/interfaces/CardPredicateTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743291970" elementId="org.eclipse.jdt.ui.PackageExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743292170" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="opened" inputUri="platform:/resource/ovinger/src/interfaces/BinaryComputingIterator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743292172" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/interfaces/BinaryComputingIterator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743292210" elementId="org.eclipse.jdt.ui.PackageExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743292262" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/interfaces/BinaryComputingIterator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743303270" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/interfaces/BinaryComputingIterator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743303307" elementId="org.eclipse.jdt.ui.PackageExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743303510" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="opened" inputUri="platform:/resource/ovinger/src/interfaces/Named.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743303511" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/interfaces/Named.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743303554" elementId="org.eclipse.jdt.ui.PackageExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743303609" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/interfaces/Named.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743304345" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/interfaces/Named.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743304388" elementId="org.eclipse.jdt.ui.PackageExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743304584" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="opened" inputUri="platform:/resource/ovinger/src/interfaces/NamedComparator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743304585" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/interfaces/NamedComparator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743304625" elementId="org.eclipse.jdt.ui.PackageExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743304689" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/interfaces/NamedComparator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743306043" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/interfaces/NamedComparator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743306086" elementId="org.eclipse.jdt.ui.PackageExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743306242" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/interfaces/Named.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743306263" elementId="org.eclipse.jdt.ui.PackageExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743306298" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/interfaces/Named.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743330701" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/interfaces/Named.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743330763" elementId="org.eclipse.jdt.ui.PackageExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743330931" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="opened" inputUri="platform:/resource/ovinger/src/interfaces/Person1.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743330932" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/interfaces/Person1.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743330968" elementId="org.eclipse.jdt.ui.PackageExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743331022" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/interfaces/Person1.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743341835" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/interfaces/Person1.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743341873" elementId="org.eclipse.jdt.ui.PackageExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743342073" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="opened" inputUri="platform:/resource/ovinger/src/interfaces/Person2.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743342074" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/interfaces/Person2.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743342114" elementId="org.eclipse.jdt.ui.PackageExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743342178" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/interfaces/Person2.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743346701" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/interfaces/Person2.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743346739" elementId="org.eclipse.jdt.ui.PackageExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743346887" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/interfaces/NamedComparator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743346908" elementId="org.eclipse.jdt.ui.PackageExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743346943" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/interfaces/NamedComparator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743382060" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/interfaces/NamedComparator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743382102" elementId="org.eclipse.jdt.ui.PackageExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743397521" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="opened" inputUri="platform:/resource/ovinger/tests/interfaces/NamedComparatorTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743397522" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/tests/interfaces/NamedComparatorTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743397566" elementId="org.eclipse.jdt.ui.PackageExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743397620" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/tests/interfaces/NamedComparatorTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743405695" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/tests/interfaces/NamedComparatorTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743405735" elementId="org.eclipse.jdt.ui.PackageExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743405921" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="opened" inputUri="platform:/resource/ovinger/tests/interfaces/Person1Test.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743405922" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/tests/interfaces/Person1Test.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743405963" elementId="org.eclipse.jdt.ui.PackageExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743406017" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/tests/interfaces/Person1Test.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743408744" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/tests/interfaces/Person1Test.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743408785" elementId="org.eclipse.jdt.ui.PackageExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743408964" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="opened" inputUri="platform:/resource/ovinger/tests/interfaces/Person2Test.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743408965" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/tests/interfaces/Person2Test.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743409003" elementId="org.eclipse.jdt.ui.PackageExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743409061" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/tests/interfaces/Person2Test.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743416512" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/tests/interfaces/Person2Test.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743416557" elementId="org.eclipse.jdt.ui.PackageExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743416727" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/interfaces/BinaryComputingIterator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743416751" elementId="org.eclipse.jdt.ui.PackageExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743416793" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/interfaces/BinaryComputingIterator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743556421" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/interfaces/BinaryComputingIterator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743556465" elementId="org.eclipse.jdt.ui.PackageExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743556684" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="opened" inputUri="platform:/resource/ovinger/tests/interfaces/BinaryComputingIteratorTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743556685" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/tests/interfaces/BinaryComputingIteratorTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743556726" elementId="org.eclipse.jdt.ui.PackageExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743556788" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/tests/interfaces/BinaryComputingIteratorTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743592504" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/tests/interfaces/BinaryComputingIteratorTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743592542" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/tests/interfaces/Person2Test.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743592574" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/tests/interfaces/Person2Test.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743599886" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/tests/interfaces/Person2Test.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743599926" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/tests/interfaces/Person1Test.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743599963" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/tests/interfaces/Person1Test.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743603466" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/tests/interfaces/Person1Test.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743603510" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/tests/interfaces/BinaryComputingIteratorTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743603549" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/tests/interfaces/BinaryComputingIteratorTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743604930" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/tests/interfaces/BinaryComputingIteratorTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743604967" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/interfaces/BinaryComputingIterator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743604998" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/interfaces/BinaryComputingIterator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743778016" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/interfaces/BinaryComputingIterator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743778047" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/tests/interfaces/BinaryComputingIteratorTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743778082" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/tests/interfaces/BinaryComputingIteratorTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743780560" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/tests/interfaces/BinaryComputingIteratorTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743780597" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/interfaces/BinaryComputingIterator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743780628" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/interfaces/BinaryComputingIterator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743786097" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/interfaces/BinaryComputingIterator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743786143" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/tests/interfaces/BinaryComputingIteratorTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743786179" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/tests/interfaces/BinaryComputingIteratorTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743798543" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/tests/interfaces/BinaryComputingIteratorTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743798584" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/interfaces/Named.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743798621" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/interfaces/Named.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743800200" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/interfaces/Named.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743800213" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/interfaces/BinaryComputingIterator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743800253" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/interfaces/BinaryComputingIterator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743873069" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/interfaces/BinaryComputingIterator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743873084" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/tests/interfaces/BinaryComputingIteratorTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743873117" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/tests/interfaces/BinaryComputingIteratorTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743878627" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/tests/interfaces/BinaryComputingIteratorTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743878641" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/interfaces/BinaryComputingIterator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743878674" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/interfaces/BinaryComputingIterator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743960870" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/interfaces/BinaryComputingIterator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743960913" elementId="org.eclipse.jdt.ui.PackageExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743964344" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="opened" inputUri="platform:/resource/ovinger/src/debugging/StringMergingIteratorProgram.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743964345" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/debugging/StringMergingIteratorProgram.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743964382" elementId="org.eclipse.jdt.ui.PackageExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743964446" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/debugging/StringMergingIteratorProgram.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743977848" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/debugging/StringMergingIteratorProgram.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743977883" elementId="org.eclipse.debug.ui.DebugView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743987708" elementId="org.eclipse.debug.ui.DebugView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519743987755" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/debugging/StringMergingIteratorProgram.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519744044866" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="closed" inputUri="platform:/resource/ovinger/src/objectstructures/TwitterAccount.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519744044893" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="closed" inputUri="platform:/resource/ovinger/src/interfaces/CardContainer.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519744044932" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="closed" inputUri="platform:/resource/ovinger/src/interfaces/CardDeck.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519744044954" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="closed" inputUri="platform:/resource/ovinger/src/interfaces/CardHand.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519744044977" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="closed" inputUri="platform:/resource/ovinger/src/interfaces/CardContainerIterator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519744045017" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="closed" inputUri="platform:/resource/ovinger/src/interfaces/CardComparator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519744045042" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="closed" inputUri="platform:/resource/ovinger/tests/interfaces/CardComparatorTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519744045063" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="closed" inputUri="platform:/resource/ovinger/tests/interfaces/CardContainerIteratorTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519744045082" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="closed" inputUri="platform:/resource/ovinger/tests/interfaces/CardDeckTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519744045101" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="closed" inputUri="platform:/resource/ovinger/tests/interfaces/CardHandTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519744045120" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="closed" inputUri="platform:/resource/ovinger/tests/interfaces/CardPredicateTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519744045140" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="closed" inputUri="platform:/resource/ovinger/src/interfaces/BinaryComputingIterator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519744045172" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="closed" inputUri="platform:/resource/ovinger/src/interfaces/Named.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519744045190" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="closed" inputUri="platform:/resource/ovinger/src/interfaces/NamedComparator.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519744045230" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="closed" inputUri="platform:/resource/ovinger/src/interfaces/Person1.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519744045246" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="closed" inputUri="platform:/resource/ovinger/src/interfaces/Person2.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519744045263" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="closed" inputUri="platform:/resource/ovinger/tests/interfaces/NamedComparatorTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519744045280" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="closed" inputUri="platform:/resource/ovinger/tests/interfaces/Person1Test.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519744045314" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="closed" inputUri="platform:/resource/ovinger/tests/interfaces/Person2Test.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519744045334" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="closed" inputUri="platform:/resource/ovinger/tests/interfaces/BinaryComputingIteratorTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519744045351" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/debugging/StringMergingIteratorProgram.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519744045387" elementId="org.eclipse.debug.ui.DebugView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519744045421" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="closed" inputUri="platform:/resource/ovinger/src/debugging/StringMergingIteratorProgram.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519744060355" elementId="org.eclipse.debug.ui.DebugView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519744060356" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519744060384" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519744109466" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="opened" inputUri="platform:/resource/ovinger/src/debugging/CoffeeCupProgram.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519744109484" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/debugging/CoffeeCupProgram.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519744109525" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519744109571" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/debugging/CoffeeCupProgram.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519744110284" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/debugging/CoffeeCupProgram.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519744110315" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519744110523" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="opened" inputUri="platform:/resource/ovinger/src/debugging/CoffeeCup.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519744110524" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/debugging/CoffeeCup.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519744110566" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519744110600" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/debugging/CoffeeCup.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519744114034" elementId="org.eclipse.debug.ui.DebugView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519744129022" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/debugging/CoffeeCup.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519744129043" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/debugging/CoffeeCupProgram.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519744129077" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/debugging/CoffeeCupProgram.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519744131037" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/debugging/CoffeeCupProgram.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519744131047" elementId="org.eclipse.debug.ui.DebugView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519744155440" elementId="org.eclipse.debug.ui.DebugView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519744155487" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/debugging/CoffeeCupProgram.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519744160611" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/debugging/CoffeeCupProgram.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519744160637" elementId="org.eclipse.debug.ui.DebugView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519745062719" elementId="org.eclipse.debug.ui.DebugView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519745062770" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/debugging/CoffeeCupProgram.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519745072880" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/debugging/CoffeeCupProgram.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519745072972" elementId="org.eclipse.debug.ui.VariableView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519745077738" elementId="org.eclipse.debug.ui.VariableView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519745077754" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/debugging/CoffeeCupProgram.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519746969751" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/debugging/CoffeeCupProgram.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519746969763" elementId="org.eclipse.jdt.ui.PackageExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519746971952" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="opened" inputUri="platform:/resource/ovinger/src/objectstructures/StopWatch.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519746971953" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/objectstructures/StopWatch.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519746971997" elementId="org.eclipse.jdt.ui.PackageExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519746972048" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/objectstructures/StopWatch.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519746995908" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/objectstructures/StopWatch.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519746995918" elementId="org.eclipse.jdt.ui.PackageExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519747028799" elementId="org.eclipse.jdt.ui.PackageExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519747028817" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/objectstructures/StopWatch.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519747032678" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/objectstructures/StopWatch.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519747032688" elementId="org.eclipse.jdt.ui.PackageExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519747116544" elementId="org.eclipse.jdt.ui.PackageExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519747116580" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/objectstructures/StopWatch.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519747117951" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="closed" inputUri="platform:/resource/ovinger/src/debugging/CoffeeCupProgram.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519747117970" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="closed" inputUri="platform:/resource/ovinger/src/debugging/CoffeeCup.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519747117985" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/objectstructures/StopWatch.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519747118013" elementId="org.eclipse.jdt.ui.PackageExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519747118038" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="closed" inputUri="platform:/resource/ovinger/src/objectstructures/StopWatch.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519747120926" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="opened" inputUri="platform:/resource/ovinger/tests/interfaces/BinaryComputingIteratorTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519747120951" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/tests/interfaces/BinaryComputingIteratorTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519747120989" elementId="org.eclipse.jdt.ui.PackageExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519747121037" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/tests/interfaces/BinaryComputingIteratorTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519747125838" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/tests/interfaces/BinaryComputingIteratorTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519747125877" elementId="org.eclipse.jdt.ui.PackageExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519747125897" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="closed" inputUri="platform:/resource/ovinger/tests/interfaces/BinaryComputingIteratorTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519747144493" elementId="org.eclipse.ui.console.ConsoleView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519747144515" elementId="org.eclipse.jdt.ui.PackageExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519747144535" elementId="org.eclipse.ui.console.ConsoleView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519747148807" elementId="org.eclipse.ui.console.ConsoleView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519747148813" elementId="org.eclipse.jdt.ui.PackageExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519753614110" elementId="org.eclipse.jdt.ui.PackageExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519753614111" elementId="org.eclipse.egit.ui.StagingView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519753614198" elementId="org.eclipse.egit.ui.StagingView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519822161200" elementId="org.eclipse.egit.ui.StagingView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519822161209" elementId="org.eclipse.jdt.ui.PackageExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519823998899" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="opened" inputUri="platform:/resource/Physics/src/app/Trace.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519823998968" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/Physics/src/app/Trace.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519823999027" elementId="org.eclipse.jdt.ui.PackageExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519823999064" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/Physics/src/app/Trace.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519831576698" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/Physics/src/app/Trace.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519831576725" elementId="org.eclipse.jdt.ui.PackageExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519831576890" elementId="org.eclipse.jdt.ui.PackageExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519831576931" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/Physics/src/app/Trace.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519831597454" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/Physics/src/app/Trace.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519831597479" elementId="org.eclipse.jdt.ui.PackageExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519831640773" elementId="org.eclipse.jdt.ui.PackageExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519831640811" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/Physics/src/app/Trace.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519831667012" elementId="org.eclipse.ui.console.ConsoleView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519831667029" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/Physics/src/app/Trace.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519831667066" elementId="org.eclipse.ui.console.ConsoleView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519831670164" elementId="org.eclipse.ui.console.ConsoleView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519831670201" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/Physics/src/app/Trace.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519831721887" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/Physics/src/app/Trace.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519831721911" elementId="org.eclipse.jdt.ui.PackageExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519831724349" elementId="org.eclipse.jdt.ui.PackageExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519831724395" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/Physics/src/app/Trace.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519831729793" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/Physics/src/app/Trace.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519831729816" elementId="org.eclipse.jdt.ui.PackageExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519831730081" elementId="org.eclipse.ui.DefaultTextEditor" action="opened" inputUri="platform:/resource/Physics/src/imports/test-mass.txt"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519831730091" elementId="org.eclipse.ui.DefaultTextEditor" action="broughtToTop" inputUri="platform:/resource/Physics/src/imports/test-mass.txt"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519831730097" elementId="org.eclipse.jdt.ui.PackageExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519831730138" elementId="org.eclipse.ui.DefaultTextEditor" action="activated" inputUri="platform:/resource/Physics/src/imports/test-mass.txt"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519831736273" elementId="org.eclipse.ui.DefaultTextEditor" action="deactivated" inputUri="platform:/resource/Physics/src/imports/test-mass.txt"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519831736295" elementId="org.eclipse.jdt.ui.PackageExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519831736501" elementId="org.eclipse.ui.DefaultTextEditor" action="opened" inputUri="platform:/resource/Physics/src/imports/mass_A.txt"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519831736502" elementId="org.eclipse.ui.DefaultTextEditor" action="broughtToTop" inputUri="platform:/resource/Physics/src/imports/mass_A.txt"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519831736515" elementId="org.eclipse.jdt.ui.PackageExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519831736543" elementId="org.eclipse.ui.DefaultTextEditor" action="activated" inputUri="platform:/resource/Physics/src/imports/mass_A.txt"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519831738208" elementId="org.eclipse.ui.DefaultTextEditor" action="deactivated" inputUri="platform:/resource/Physics/src/imports/mass_A.txt"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519831738232" elementId="org.eclipse.jdt.ui.PackageExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519831738422" elementId="org.eclipse.ui.DefaultTextEditor" action="broughtToTop" inputUri="platform:/resource/Physics/src/imports/test-mass.txt"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519831738427" elementId="org.eclipse.jdt.ui.PackageExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519831738449" elementId="org.eclipse.ui.DefaultTextEditor" action="activated" inputUri="platform:/resource/Physics/src/imports/test-mass.txt"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519832432689" elementId="org.eclipse.jdt.junit.ResultView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519832432716" elementId="org.eclipse.ui.DefaultTextEditor" action="deactivated" inputUri="platform:/resource/Physics/src/imports/test-mass.txt"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519832432742" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519832434780" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519832434792" elementId="org.eclipse.jdt.ui.PackageExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519832438935" elementId="org.eclipse.ui.DefaultTextEditor" action="opened" inputUri="platform:/resource/Physics/src/imports/mass_B.txt"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519832438936" elementId="org.eclipse.ui.DefaultTextEditor" action="broughtToTop" inputUri="platform:/resource/Physics/src/imports/mass_B.txt"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519832438944" elementId="org.eclipse.jdt.ui.PackageExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519832438968" elementId="org.eclipse.ui.DefaultTextEditor" action="activated" inputUri="platform:/resource/Physics/src/imports/mass_B.txt"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519833173099" elementId="org.eclipse.ui.DefaultTextEditor" action="deactivated" inputUri="platform:/resource/Physics/src/imports/mass_B.txt"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519833173103" elementId="org.eclipse.ui.DefaultTextEditor" action="broughtToTop" inputUri="platform:/resource/Physics/src/imports/mass_A.txt"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519833173116" elementId="org.eclipse.ui.DefaultTextEditor" action="activated" inputUri="platform:/resource/Physics/src/imports/mass_A.txt"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519833174856" elementId="org.eclipse.ui.DefaultTextEditor" action="deactivated" inputUri="platform:/resource/Physics/src/imports/mass_A.txt"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519833174865" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/Physics/src/app/Trace.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519833174898" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/Physics/src/app/Trace.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519833184291" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/Physics/src/app/Trace.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519833184303" elementId="org.eclipse.jdt.ui.PackageExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519833184494" elementId="org.eclipse.ui.DefaultTextEditor" action="broughtToTop" inputUri="platform:/resource/Physics/src/imports/mass_A.txt"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519833184500" elementId="org.eclipse.jdt.ui.PackageExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519833184520" elementId="org.eclipse.ui.DefaultTextEditor" action="activated" inputUri="platform:/resource/Physics/src/imports/mass_A.txt"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519833194132" elementId="org.eclipse.ui.DefaultTextEditor" action="deactivated" inputUri="platform:/resource/Physics/src/imports/mass_A.txt"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519833194141" elementId="org.eclipse.jdt.ui.PackageExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519833194323" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/Physics/src/app/Trace.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519833194343" elementId="org.eclipse.jdt.ui.PackageExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519833194383" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/Physics/src/app/Trace.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519833222461" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/Physics/src/app/Trace.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519833222471" elementId="org.eclipse.jdt.ui.PackageExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519833234321" elementId="org.eclipse.jdt.ui.PackageExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519833234359" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/Physics/src/app/Trace.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519833240358" elementId="org.eclipse.ui.console.ConsoleView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519833240372" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/Physics/src/app/Trace.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519833240417" elementId="org.eclipse.ui.console.ConsoleView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519833267190" elementId="org.eclipse.ui.console.ConsoleView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519833267201" elementId="org.eclipse.jdt.ui.PackageExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519833322046" elementId="org.eclipse.jdt.ui.PackageExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519833322068" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/Physics/src/app/Trace.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519833339558" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/Physics/src/app/Trace.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519833339612" elementId="org.eclipse.jdt.ui.PackageExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519833513701" elementId="org.eclipse.jdt.ui.PackageExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519833513731" elementId="org.eclipse.ui.console.ConsoleView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519833515207" elementId="org.eclipse.ui.console.ConsoleView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519833515227" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/Physics/src/app/Trace.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519833565895" elementId="org.eclipse.ui.views.ContentOutline" action="closed"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519833565933" elementId="org.eclipse.ui.navigator.ProjectExplorer" action="closed"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519833565953" elementId="org.eclipse.debug.ui.DebugView" action="closed"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519833565983" elementId="org.eclipse.debug.ui.BreakpointView" action="closed"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519833566002" elementId="org.eclipse.debug.ui.VariableView" action="closed"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519833566100" elementId="org.eclipse.egit.ui.RepositoriesView" action="closed"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519833566134" elementId="org.eclipse.jdt.ui.PackageExplorer" action="closed"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519833566186" elementId="org.eclipse.ui.views.ProblemView" action="closed"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519833566192" elementId="org.eclipse.jdt.junit.ResultView" action="closed"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519833566205" elementId="org.eclipse.egit.ui.StagingView" action="closed"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519833566223" elementId="org.eclipse.ui.console.ConsoleView" action="closed"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519833566258" elementId="org.eclipse.ui.DefaultTextEditor" action="closed" inputUri="platform:/resource/Physics/src/imports/test-mass.txt"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519833566266" elementId="org.eclipse.ui.DefaultTextEditor" action="closed" inputUri="platform:/resource/Physics/src/imports/mass_A.txt"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519833566274" elementId="org.eclipse.ui.DefaultTextEditor" action="closed" inputUri="platform:/resource/Physics/src/imports/mass_B.txt"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519833566289" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/Physics/src/app/Trace.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1519833566290" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="closed" inputUri="platform:/resource/Physics/src/app/Trace.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1520776211178" elementId="no.hal.learning.exercise.views.ExerciseView" action="closed"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1520776211202" elementId="net.sourceforge.plantuml.eclipse.views.PlantUmlView" action="closed"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1520776211223" elementId="org.eclipse.debug.ui.DebugView" action="closed"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1520776211256" elementId="org.eclipse.jdt.ui.PackageExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1520776211256" elementId="org.eclipse.jdt.ui.PackageExplorer" action="closed"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523366821069" elementId="no.hal.learning.exercise.presentation.ExerciseEditorID" action="opened" inputUri="platform:/resource/ovinger/tests/patterns/observable2/ObservableListInheritance.ex"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523366821085" elementId="no.hal.learning.exercise.presentation.ExerciseEditorID" action="broughtToTop" inputUri="platform:/resource/ovinger/tests/patterns/observable2/ObservableListInheritance.ex"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523366821085" elementId="org.eclipse.jdt.ui.PackageExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523366821116" elementId="no.hal.learning.exercise.presentation.ExerciseEditorID" action="activated" inputUri="platform:/resource/ovinger/tests/patterns/observable2/ObservableListInheritance.ex"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523366821806" elementId="no.hal.learning.exercise.presentation.ExerciseEditorID" action="deactivated" inputUri="platform:/resource/ovinger/tests/patterns/observable2/ObservableListInheritance.ex"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523366821822" elementId="org.eclipse.jdt.ui.PackageExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523366822056" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="opened" inputUri="platform:/resource/ovinger/tests/patterns/observable2/ObservableHighscoreListTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523366822072" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/tests/patterns/observable2/ObservableHighscoreListTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523366822087" elementId="org.eclipse.jdt.ui.PackageExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523366822119" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/tests/patterns/observable2/ObservableHighscoreListTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523366823195" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/tests/patterns/observable2/ObservableHighscoreListTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523366823211" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523366823211" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523366823242" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523366826057" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523366826072" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/tests/patterns/observable2/ObservableHighscoreListTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523366842007" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/tests/patterns/observable2/ObservableHighscoreListTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523366842038" elementId="org.eclipse.jdt.ui.PackageExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523366856460" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="opened" inputUri="platform:/resource/ovinger/src/inheritance/TrainCar.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523366856460" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/inheritance/TrainCar.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523366856460" elementId="org.eclipse.jdt.ui.PackageExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523366856491" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/inheritance/TrainCar.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523366878022" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/inheritance/TrainCar.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523366878037" elementId="org.eclipse.jdt.ui.PackageExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523366878287" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="opened" inputUri="platform:/resource/ovinger/src/inheritance/PassengerCar.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523366878287" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/inheritance/PassengerCar.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523366878287" elementId="org.eclipse.jdt.ui.PackageExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523366878334" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/inheritance/PassengerCar.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523366879302" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/inheritance/PassengerCar.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523366879317" elementId="org.eclipse.jdt.ui.PackageExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523366879552" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="opened" inputUri="platform:/resource/ovinger/src/inheritance/CargoCar.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523366879552" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/inheritance/CargoCar.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523366879567" elementId="org.eclipse.jdt.ui.PackageExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523366879583" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/inheritance/CargoCar.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523366894598" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/inheritance/CargoCar.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523366894613" elementId="org.eclipse.jdt.ui.PackageExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523366894754" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/inheritance/PassengerCar.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523366894769" elementId="org.eclipse.jdt.ui.PackageExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523366894801" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/inheritance/PassengerCar.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523366919991" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/inheritance/PassengerCar.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523366920007" elementId="org.eclipse.jdt.ui.PackageExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523366920225" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="opened" inputUri="platform:/resource/ovinger/src/inheritance/Train.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523366920225" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/inheritance/Train.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523366920241" elementId="org.eclipse.jdt.ui.PackageExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523366920272" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/inheritance/Train.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367030518" elementId="org.eclipse.ui.console.ConsoleView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367030612" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/inheritance/Train.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367030612" elementId="org.eclipse.ui.console.ConsoleView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367030628" elementId="org.eclipse.ui.console.ConsoleView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367030628" elementId="org.eclipse.ui.console.ConsoleView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367030659" elementId="org.eclipse.ui.console.ConsoleView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367033919" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/inheritance/Train.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367036271" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/inheritance/Train.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367036271" elementId="org.eclipse.ui.console.ConsoleView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367036271" elementId="org.eclipse.ui.console.ConsoleView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367036271" elementId="org.eclipse.ui.console.ConsoleView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367036302" elementId="org.eclipse.ui.console.ConsoleView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367039438" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/inheritance/Train.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367051594" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/inheritance/Train.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367051609" elementId="org.eclipse.jdt.ui.PackageExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367053585" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="opened" inputUri="platform:/resource/ovinger/tests/inheritance/TrainTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367053585" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/tests/inheritance/TrainTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367053601" elementId="org.eclipse.jdt.ui.PackageExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367053632" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/tests/inheritance/TrainTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367054717" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/tests/inheritance/TrainTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367054732" elementId="org.eclipse.jdt.ui.PackageExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367054952" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="opened" inputUri="platform:/resource/ovinger/tests/inheritance/TrainCarTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367054952" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/tests/inheritance/TrainCarTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367054952" elementId="org.eclipse.jdt.ui.PackageExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367054999" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/tests/inheritance/TrainCarTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367056558" elementId="org.eclipse.jdt.junit.ResultView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367056590" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/tests/inheritance/TrainCarTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367056590" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367056605" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367056636" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367059312" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367059328" elementId="org.eclipse.jdt.ui.PackageExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367059544" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="opened" inputUri="platform:/resource/ovinger/tests/inheritance/PassengerCarTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367059544" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/tests/inheritance/PassengerCarTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367059560" elementId="org.eclipse.jdt.ui.PackageExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367059591" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/tests/inheritance/PassengerCarTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367060844" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/tests/inheritance/PassengerCarTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367060844" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367060844" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367060875" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367062540" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367062555" elementId="org.eclipse.jdt.ui.PackageExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367062790" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="opened" inputUri="platform:/resource/ovinger/tests/inheritance/CargoCarTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367062790" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/tests/inheritance/CargoCarTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367062805" elementId="org.eclipse.jdt.ui.PackageExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367062836" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/tests/inheritance/CargoCarTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367063934" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/tests/inheritance/CargoCarTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367063950" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367063950" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367063966" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367067139" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367067170" elementId="org.eclipse.jdt.ui.PackageExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367067311" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/tests/inheritance/TrainTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367067311" elementId="org.eclipse.jdt.ui.PackageExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367067357" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/tests/inheritance/TrainTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367110690" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/tests/inheritance/TrainTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367110690" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367110706" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367110737" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367113407" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367113438" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/tests/inheritance/TrainTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367144322" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="closed" inputUri="platform:/resource/ovinger/src/patterns/observable/ObservableList.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367144353" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="closed" inputUri="platform:/resource/ovinger/src/patterns/observable2/ObservableHighscoreList.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367144369" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="closed" inputUri="platform:/resource/ovinger/src/patterns/observable2/ObservableList.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367144384" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="closed" inputUri="platform:/resource/ovinger/src/patterns/observable2/ObservableListListener.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367144400" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="closed" inputUri="platform:/resource/ovinger/src/patterns/observable/ObservableHighscoreList.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367144431" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="closed" inputUri="platform:/resource/ovinger/tests/patterns/observable/ObservableListTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367144447" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="closed" inputUri="platform:/resource/ovinger/tests/patterns/observable2/ObservableListTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367144462" elementId="no.hal.learning.exercise.presentation.ExerciseEditorID" action="closed" inputUri="platform:/resource/ovinger/tests/patterns/observable2/ObservableListInheritance.ex"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367144478" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="closed" inputUri="platform:/resource/ovinger/tests/patterns/observable2/ObservableHighscoreListTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367144509" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="closed" inputUri="platform:/resource/ovinger/src/inheritance/TrainCar.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367144541" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="closed" inputUri="platform:/resource/ovinger/src/inheritance/PassengerCar.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367144556" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="closed" inputUri="platform:/resource/ovinger/src/inheritance/CargoCar.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367144572" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="closed" inputUri="platform:/resource/ovinger/src/inheritance/Train.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367144604" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="closed" inputUri="platform:/resource/ovinger/tests/inheritance/TrainCarTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367144612" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="closed" inputUri="platform:/resource/ovinger/tests/inheritance/PassengerCarTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367144628" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="closed" inputUri="platform:/resource/ovinger/tests/inheritance/CargoCarTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367144628" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/tests/inheritance/TrainTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367144659" elementId="org.eclipse.jdt.ui.PackageExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367144675" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="closed" inputUri="platform:/resource/ovinger/tests/inheritance/TrainTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367183634" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="opened" inputUri="platform:/resource/ovinger/src/testing/AccountTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367183650" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/testing/AccountTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367183650" elementId="org.eclipse.jdt.ui.PackageExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367183697" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/testing/AccountTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367430509" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/testing/AccountTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367430509" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367430509" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367430540" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367445458" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367445505" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/testing/AccountTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367448062" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/testing/AccountTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367448062" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367448062" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367448093" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367453796" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367453827" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/testing/AccountTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367467834" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/testing/AccountTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367467850" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367468053" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367468084" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/testing/AccountTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367509448" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/testing/AccountTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367509448" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367509682" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367509713" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/testing/AccountTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367582452" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/testing/AccountTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367582467" elementId="org.eclipse.jdt.ui.PackageExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367582701" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="opened" inputUri="platform:/resource/ovinger/src/testing/CardTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367582701" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/testing/CardTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367582717" elementId="org.eclipse.jdt.ui.PackageExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367582732" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/testing/CardTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367585127" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/testing/CardTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367585142" elementId="org.eclipse.jdt.ui.PackageExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367590085" elementId="org.eclipse.jdt.ui.PackageExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367590100" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/testing/CardTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367593648" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/testing/CardTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367593648" elementId="org.eclipse.jdt.ui.PackageExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367593819" elementId="org.eclipse.jdt.ui.PackageExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367593866" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/testing/CardTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367662600" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/testing/CardTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367662631" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367662834" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367662865" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/testing/CardTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367800527" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/testing/CardTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367800542" elementId="org.eclipse.jdt.ui.PackageExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367800683" elementId="org.eclipse.jdt.ui.PackageExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367800729" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/testing/CardTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367802226" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/testing/CardTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367802226" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367802241" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367802288" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367816779" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367816825" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/testing/CardTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367828674" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/testing/CardTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367828689" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367828908" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367828939" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/testing/CardTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367840838" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/testing/CardTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367840853" elementId="org.eclipse.jdt.ui.PackageExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367841057" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="opened" inputUri="platform:/resource/ovinger/src/testing/Card.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367841057" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/testing/Card.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367841057" elementId="org.eclipse.jdt.ui.PackageExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367841088" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/testing/Card.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367842415" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/testing/Card.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367842415" elementId="org.eclipse.jdt.ui.PackageExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367842634" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="opened" inputUri="platform:/resource/ovinger/src/testing/CardDeck.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367842634" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/testing/CardDeck.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367842634" elementId="org.eclipse.jdt.ui.PackageExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367842665" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/testing/CardDeck.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367856288" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/testing/Card.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367856288" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/testing/CardDeck.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367856303" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/testing/Card.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367856334" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="closed" inputUri="platform:/resource/ovinger/src/testing/CardDeck.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367858208" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/ovinger/src/testing/CardTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367858208" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/testing/Card.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367858223" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/testing/CardTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367858254" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="closed" inputUri="platform:/resource/ovinger/src/testing/Card.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367860526" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/testing/CardTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367860541" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367860718" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367860749" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/testing/CardTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367870340" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/testing/CardTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367870356" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367870559" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367870606" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/ovinger/src/testing/CardTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367882994" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/ovinger/src/testing/CardTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367883009" elementId="org.eclipse.jdt.ui.PackageExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367897228" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="opened" inputUri="platform:/resource/PattyPlay/src/tictactoe/GridListener.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367897228" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/PattyPlay/src/tictactoe/GridListener.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367897228" elementId="org.eclipse.jdt.ui.PackageExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367897259" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/PattyPlay/src/tictactoe/GridListener.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367898374" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/PattyPlay/src/tictactoe/GridListener.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367898374" elementId="org.eclipse.jdt.ui.PackageExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367898578" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="opened" inputUri="platform:/resource/PattyPlay/src/tictactoe/GenericGridGame.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367898578" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/PattyPlay/src/tictactoe/GenericGridGame.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367898578" elementId="org.eclipse.jdt.ui.PackageExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367898609" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/PattyPlay/src/tictactoe/GenericGridGame.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367901460" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/PattyPlay/src/tictactoe/GenericGridGame.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367901460" elementId="org.eclipse.jdt.ui.PackageExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367901616" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/PattyPlay/src/tictactoe/GridListener.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367901616" elementId="org.eclipse.jdt.ui.PackageExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367901647" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/PattyPlay/src/tictactoe/GridListener.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367909967" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/PattyPlay/src/tictactoe/GridListener.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367909983" elementId="org.eclipse.jdt.ui.PackageExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367910186" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="opened" inputUri="platform:/resource/PattyPlay/src/tictactoe/TicTacToeGame.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367910186" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/PattyPlay/src/tictactoe/TicTacToeGame.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367910201" elementId="org.eclipse.jdt.ui.PackageExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523367910233" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/PattyPlay/src/tictactoe/TicTacToeGame.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523369352843" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/PattyPlay/src/tictactoe/TicTacToeGame.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523369352843" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="broughtToTop" inputUri="platform:/resource/PattyPlay/src/tictactoe/GenericGridGame.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523369352858" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="activated" inputUri="platform:/resource/PattyPlay/src/tictactoe/GenericGridGame.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523369355073" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="closed" inputUri="platform:/resource/ovinger/src/testing/AccountTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523369355119" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="closed" inputUri="platform:/resource/ovinger/src/testing/CardTest.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523369355151" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="closed" inputUri="platform:/resource/PattyPlay/src/tictactoe/GridListener.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523369355151" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="closed" inputUri="platform:/resource/PattyPlay/src/tictactoe/TicTacToeGame.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523369355188" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="deactivated" inputUri="platform:/resource/PattyPlay/src/tictactoe/GenericGridGame.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523369355197" elementId="org.eclipse.jdt.ui.PackageExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523369355212" elementId="org.eclipse.jdt.ui.CompilationUnitEditor" action="closed" inputUri="platform:/resource/PattyPlay/src/tictactoe/GenericGridGame.java"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523369406156" elementId="org.eclipse.ui.console.ConsoleView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523369406171" elementId="org.eclipse.jdt.ui.PackageExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523369406187" elementId="org.eclipse.ui.console.ConsoleView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523369411457" elementId="org.eclipse.ui.console.ConsoleView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523369411457" elementId="org.eclipse.jdt.junit.ResultView" action="broughtToTop"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523369411489" elementId="org.eclipse.jdt.junit.ResultView" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523369506206" elementId="org.eclipse.jdt.junit.ResultView" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523369506222" elementId="org.eclipse.jdt.ui.PackageExplorer" action="activated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523370732795" elementId="org.eclipse.ui.views.ProblemView" action="closed"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523370732811" elementId="org.eclipse.ui.console.ConsoleView" action="closed"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523370732811" elementId="org.eclipse.jdt.junit.ResultView" action="closed"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523370732878" elementId="org.eclipse.egit.ui.RepositoriesView" action="closed"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523370732894" elementId="org.eclipse.jdt.ui.PackageExplorer" action="deactivated"/>
        <attempts xsi:type="workbench:PartTaskEvent" timestamp="1523370732894" elementId="org.eclipse.jdt.ui.PackageExplorer" action="closed"/>
      </proposals>
    </proposals>
  </exercise:ExerciseProposals>
</xmi:XMI>
