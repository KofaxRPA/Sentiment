<?xml version="1.0" encoding="UTF-8" ?>
<object class="Robot" serializationversion="2">
  <prologue>
    <saved-by-versions>
      <version>10.7.0.0</version>
    </saved-by-versions>
    <comment/>
    <tags>
      <tag>twitter</tag>
      <tag>hashtag</tag>
      <tag>sentiment</tag>
      <tag>NLP</tag>
    </tags>
    <referenced-types>
      <type name="Tweet"/>
      <type name="Twitter"/>
    </referenced-types>
    <referenced-snippets/>
    <triggers/>
    <typed-variables>
      <typed-variable name="tweet" type-name="Tweet"/>
      <typed-variable name="twitter" type-name="Twitter"/>
    </typed-variables>
    <global-variables/>
    <parameters/>
    <return-variables/>
    <store-in-database-variables/>
    <device-mappings/>
    <browser-engine>WEBKIT</browser-engine>
  </prologue>
  <property name="variables" class="Variables">
    <object class="Variable" serializationversion="1">
      <property name="name" class="String">hashtag</property>
      <property name="initialAssignment" class="InitialVariableAssignment">
        <property name="type" class="SimpleTypeReference">
          <property name="simpleTypeId" class="Integer">12</property>
        </property>
        <property name="assignments" class="AttributeAssignments">
          <property name="value" class="AttributeAssignment">
            <property name="attributeValue" class="String">UIPath</property>
            <property name="currentlyAssigned" class="Boolean">true</property>
            <property name="lastKnownAttributeType" class="java.lang.Class">kapow.robot.plugin.common.domain.StringAttributeType</property>
          </property>
        </property>
      </property>
    </object>
    <object class="Variable" serializationversion="1">
      <property name="name" class="String">tweet</property>
      <property name="initialAssignment" class="InitialVariableAssignment">
        <property name="type" class="TypeReference" serializationversion="0">
          <property name="typeName" class="String">Tweet</property>
        </property>
      </property>
    </object>
    <object class="Variable" serializationversion="1">
      <property name="name" class="String">html</property>
      <property name="initialAssignment" class="InitialVariableAssignment">
        <property name="type" class="SimpleTypeReference">
          <property name="simpleTypeId" class="Integer">5</property>
        </property>
      </property>
    </object>
    <object class="Variable" serializationversion="1">
      <property name="name" class="String">twitter</property>
      <property name="initialAssignment" class="InitialVariableAssignment">
        <property name="type" class="TypeReference" serializationversion="0">
          <property name="typeName" class="String">Twitter</property>
        </property>
      </property>
    </object>
  </property>
  <property name="proxyServerConfiguration" class="ProxyServerConfiguration" serializationversion="0"/>
  <property name="httpClientType" class="HttpClientType">
    <property name="enum-name" class="String">WEBKIT</property>
  </property>
  <property name="ntlmAuthentication" class="NTLMAuthenticationType">
    <property name="enum-name" class="String">STANDARD</property>
  </property>
  <property name="usePre96DefaultWaiting" class="Boolean" id="0">false</property>
  <property name="maxWaitForTimeout" class="Integer">10000</property>
  <property name="waitRealTime" idref="0"/>
  <property name="privateHTTPCacheEnabled" class="Boolean" id="1">true</property>
  <property name="privateHTTPCacheSize" class="Integer">2048</property>
  <property name="comment">
    <null/>
  </property>
  <property name="tags" class="RobotTagList">
    <object class="RobotTag">
      <property name="tag" class="String">twitter</property>
    </object>
    <object class="RobotTag">
      <property name="tag" class="String">hashtag</property>
    </object>
    <object class="RobotTag">
      <property name="tag" class="String">sentiment</property>
    </object>
    <object class="RobotTag">
      <property name="tag" class="String">NLP</property>
    </object>
  </property>
  <property name="humanProcessingTime">
    <null/>
  </property>
  <property name="executionMode" class="ExecutionMode">
    <property name="enum-name" class="String">FULL</property>
  </property>
  <property name="avoidExternalReExecution" idref="0"/>
  <property name="transitionGraph" class="Body">
    <blockBeginStep class="BlockBeginStep" id="2"/>
    <steps class="ArrayList">
      <object class="Group" id="3">
        <name class="String">Login to twitter</name>
        <comment>
          <null/>
        </comment>
        <blockBeginStep class="BlockBeginStep" id="4"/>
        <steps class="ArrayList">
          <object class="Transition" serializationversion="3" id="5">
            <property name="name" class="String">Lookup Twitter APIKey</property>
            <property name="stepAction" class="LookupPassword">
              <property name="userName" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                <property name="value" class="String">APIKey</property>
              </property>
              <property name="targetSystem" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                <property name="value" class="String">twitter</property>
              </property>
              <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">twitter.APIKey</property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders"/>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment" class="String">Get a Twitter Developer Key
https://developer.twitter.com/en/account/get-started
(this can take a week as you have to answer some emails from Twitter about what you are doing)
create an app
Set an App Name
Enter App Details
Copy Keys and tokens
•	API key
•	API secret key
Review permissions for read &amp; write access
</property>
            <property name="enabled" idref="1"/>
            <property name="changedProperties" class="java.util.HashSet">
              <element class="String">name</element>
            </property>
          </object>
          <object class="Transition" serializationversion="3" id="6">
            <property name="name" class="String">Lookup Twitter APISecretKey</property>
            <property name="stepAction" class="LookupPassword">
              <property name="userName" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                <property name="value" class="String">APISecretKey</property>
              </property>
              <property name="targetSystem" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                <property name="value" class="String">twitter</property>
              </property>
              <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">twitter.APISecretKey</property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders"/>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="1"/>
            <property name="changedProperties" class="java.util.HashSet">
              <element class="String">name</element>
            </property>
          </object>
          <object class="Transition" serializationversion="3" id="7">
            <property name="name" class="String">Login to Twitter API</property>
            <property name="stepAction" class="RawHTTP2" serializationversion="0">
              <property name="urlProvider" class="kapow.robot.plugin.common.stepaction.urlprovider2.ValueURLProvider2">
                <property name="URL" class="String">https://api.twitter.com/oauth2/token</property>
              </property>
              <property name="method" class="kapow.robot.plugin.common.support.rawhttp.POSTRawHTTPMethod">
                <property name="body" class="kapow.robot.plugin.common.stateprocessor.rest.RawBodyContent">
                  <property name="data" class="kapow.robot.plugin.common.support.expression.stringexpr.MultilineValueStringExpression">
                    <property name="value" class="String">grant_type=client_credentials</property>
                  </property>
                  <property name="contentType" class="kapow.robot.plugin.common.support.mimetype.MIMETypeValueStringExpression">
                    <property name="value" class="String">application/x-www-form-urlencoded</property>
                  </property>
                </property>
                <property name="storeInAttributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                  <property name="name" class="String">tweet.text</property>
                </property>
              </property>
              <property name="browserConfigurationSpecification" class="BrowserConfigurationSpecificationWebKit" serializationversion="26">
                <property name="SSLUsage" class="com.kapowtech.net.ssl.SSLUsage" id="8">
                  <property name="enum-name" class="String">TLS1x_SSL3_TLSHello</property>
                </property>
                <property name="headerProvider" class="kapow.robot.plugin.common.support.browser2.requestheaders.ListHeaderProvider">
                  <property name="headers" class="BeanList">
                    <object class="kapow.robot.plugin.common.support.browser2.requestheaders.RequestHeader">
                      <property name="header" class="kapow.robot.plugin.common.support.expression.multipletype.StringProcessorsExpression" serializationversion="0">
                        <property name="dataConverters" class="DataConverters">
                          <element class="EvaluateExpression" serializationversion="0">
                            <property name="expression" class="String">twitter.APIKey+":"+twitter.APISecretKey</property>
                          </element>
                          <element class="ConvertTextToBinary"/>
                          <element class="Base64Encode"/>
                          <element class="AddText">
                            <property name="text" class="String">Authorization: Basic </property>
                          </element>
                        </property>
                      </property>
                    </object>
                  </property>
                </property>
                <property name="ancestorProvider" class="BrowserConfigurationSpecificationAncestorProviderForStep"/>
                <property name="changedProperties" class="java.util.HashSet">
                  <element class="String">headerProvider</element>
                  <element class="String">credentialsProvider</element>
                  <element class="String">SSLUsage</element>
                </property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders"/>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment" class="String">https://developer.twitter.com/en/docs/basics/authentication/guides/bearer-tokens

Look at the custom Authorization Header in the Options Tab</property>
            <property name="enabled" idref="1"/>
            <property name="changedProperties" class="java.util.HashSet">
              <element class="String">name</element>
            </property>
          </object>
        </steps>
        <blockEndStep class="BlockEndStep" id="9"/>
        <edges class="ArrayList">
          <object class="TransitionEdge">
            <from idref="4"/>
            <to idref="5"/>
          </object>
          <object class="TransitionEdge">
            <from idref="5"/>
            <to idref="6"/>
          </object>
          <object class="TransitionEdge">
            <from idref="6"/>
            <to idref="7"/>
          </object>
          <object class="TransitionEdge">
            <from idref="7"/>
            <to idref="9"/>
          </object>
        </edges>
      </object>
      <object class="Group" id="10">
        <name class="String">Get Bearer Token</name>
        <comment>
          <null/>
        </comment>
        <blockBeginStep class="BlockBeginStep" id="11"/>
        <steps class="ArrayList">
          <object class="Transition" serializationversion="3" id="12">
            <property name="name" class="String" id="13">Create Page</property>
            <property name="stepAction" class="CreatePage2">
              <property name="contents" class="kapow.robot.plugin.common.support.expression.multipletype.VariableExpression" serializationversion="2">
                <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                  <property name="name" class="String">tweet.text</property>
                </property>
              </property>
              <property name="browserConfigurationSpecification" class="BrowserConfigurationSpecificationWebKit" serializationversion="26">
                <property name="overrideMimeTypeProvider" class="kapow.robot.plugin.common.support.mimetype.provider.urlbased.AllURLBasedMIMETypeProvider">
                  <property name="mimeType" class="com.kapowtech.net.MIMEType">
                    <property name="mimeType" class="String">application/json</property>
                  </property>
                </property>
                <property name="ancestorProvider" class="BrowserConfigurationSpecificationAncestorProviderForStep"/>
                <property name="changedProperties" class="java.util.HashSet">
                  <element class="String">overrideMimeTypeProvider</element>
                </property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders"/>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="1"/>
            <property name="changedProperties" class="java.util.HashSet"/>
          </object>
          <object class="Transition" serializationversion="3" id="14">
            <property name="name" class="String" id="15">View as JSON</property>
            <property name="stepAction" class="ViewAsJSON"/>
            <property name="elementFinders" class="ElementFinders"/>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="1"/>
            <property name="changedProperties" class="java.util.HashSet"/>
          </object>
          <object class="Transition" serializationversion="3" id="16">
            <property name="name" class="String">Extract Bearer</property>
            <property name="stepAction" class="ExtractJSON2">
              <property name="dataConverters" class="DataConverters">
                <element class="UnquoteText"/>
              </property>
              <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">twitter.Bearer</property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders">
              <object class="kapow.robot.robomaker.state.document.elementfinder.json.JSONElementFinder">
                <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                  <property name="value" class="String">@top:.access_token</property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="1"/>
            <property name="changedProperties" class="java.util.HashSet"/>
          </object>
        </steps>
        <blockEndStep class="BlockEndStep" id="17"/>
        <edges class="ArrayList">
          <object class="TransitionEdge">
            <from idref="11"/>
            <to idref="12"/>
          </object>
          <object class="TransitionEdge">
            <from idref="12"/>
            <to idref="14"/>
          </object>
          <object class="TransitionEdge">
            <from idref="14"/>
            <to idref="16"/>
          </object>
          <object class="TransitionEdge">
            <from idref="16"/>
            <to idref="17"/>
          </object>
        </edges>
      </object>
      <object class="Transition" serializationversion="3" id="18">
        <property name="name" class="String">Search twitter for hashtag</property>
        <property name="stepAction" class="RawHTTP2" serializationversion="0">
          <property name="urlProvider" class="kapow.robot.plugin.common.stepaction.urlprovider2.ExpressionURLProvider2">
            <property name="expression" class="String">"https://api.twitter.com/1.1/search/tweets.json"
+"?count=1000&amp;result_type=recent&amp;q=%23"+hashtag</property>
          </property>
          <property name="method" class="kapow.robot.plugin.common.support.rawhttp.GETRawHTTPMethod">
            <property name="storeInAttributeName" class="kapow.robot.plugin.common.support.AttributeName2">
              <property name="name" class="String">tweet.text</property>
            </property>
          </property>
          <property name="browserConfigurationSpecification" class="BrowserConfigurationSpecificationWebKit" serializationversion="26">
            <property name="SSLUsage" idref="8"/>
            <property name="headerProvider" class="kapow.robot.plugin.common.support.browser2.requestheaders.ListHeaderProvider">
              <property name="headers" class="BeanList">
                <object class="kapow.robot.plugin.common.support.browser2.requestheaders.RequestHeader">
                  <property name="header" class="Expression" serializationversion="1">
                    <property name="text" class="String">"authorization: Bearer "+twitter.Bearer</property>
                  </property>
                </object>
              </property>
            </property>
            <property name="ancestorProvider" class="BrowserConfigurationSpecificationAncestorProviderForStep"/>
            <property name="changedProperties" class="java.util.HashSet">
              <element class="String">headerProvider</element>
              <element class="String">credentialsProvider</element>
              <element class="String">SSLUsage</element>
            </property>
          </property>
        </property>
        <property name="elementFinders" class="ElementFinders"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment" class="String">https://developer.twitter.com/en/docs/tweets/search/quick-start/premium-30-day

With a standard free Twitter key you only get results from the last 7 days</property>
        <property name="enabled" idref="1"/>
        <property name="changedProperties" class="java.util.HashSet">
          <element class="String">name</element>
        </property>
      </object>
      <object class="Transition" serializationversion="3" id="19">
        <property name="name" idref="13"/>
        <property name="stepAction" class="CreatePage2">
          <property name="contents" class="kapow.robot.plugin.common.support.expression.multipletype.VariableExpression" serializationversion="2">
            <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
              <property name="name" class="String">tweet.text</property>
            </property>
          </property>
          <property name="browserConfigurationSpecification" class="BrowserConfigurationSpecificationWebKit" serializationversion="26">
            <property name="overrideMimeTypeProvider" class="kapow.robot.plugin.common.support.mimetype.provider.urlbased.AllURLBasedMIMETypeProvider">
              <property name="mimeType" class="com.kapowtech.net.MIMEType">
                <property name="mimeType" class="String">application/json</property>
              </property>
            </property>
            <property name="ancestorProvider" class="BrowserConfigurationSpecificationAncestorProviderForStep"/>
            <property name="changedProperties" class="java.util.HashSet">
              <element class="String">overrideMimeTypeProvider</element>
            </property>
          </property>
        </property>
        <property name="elementFinders" class="ElementFinders" id="20"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="1"/>
        <property name="changedProperties" class="java.util.HashSet"/>
      </object>
      <object class="Transition" serializationversion="3" id="21">
        <property name="name" idref="15"/>
        <property name="stepAction" class="ViewAsJSON"/>
        <property name="elementFinders" idref="20"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="1"/>
        <property name="changedProperties" class="java.util.HashSet"/>
      </object>
      <object class="Transition" serializationversion="3" id="22">
        <property name="name" class="String">For Each Tweet</property>
        <property name="stepAction" class="ForEachItem"/>
        <property name="elementFinders" class="ElementFinders">
          <object class="kapow.robot.robomaker.state.document.elementfinder.json.JSONElementFinder">
            <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
              <property name="value" class="String">@top:.statuses</property>
            </property>
          </object>
        </property>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="1"/>
        <property name="changedProperties" class="java.util.HashSet">
          <element class="String">name</element>
        </property>
      </object>
      <object class="Try" id="23"/>
      <object class="Transition" serializationversion="3" id="24">
        <property name="name" class="String">retweet?</property>
        <property name="stepAction" class="SetNamedJSON">
          <property name="tagName" class="DesiredElementName">
            <property name="name" class="String">retweet</property>
          </property>
        </property>
        <property name="elementFinders" class="ElementFinders">
          <object class="kapow.robot.robomaker.state.document.elementfinder.json.JSONElementFinder">
            <property name="tagRelation" class="InJSONRelation">
              <property name="tagName" class="ElementName">
                <property name="name" class="String">1</property>
              </property>
            </property>
            <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
              <property name="value" class="String">.retweeted_status</property>
            </property>
          </object>
        </property>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0">
          <property name="reportingViaAPI" class="Boolean">false</property>
          <property name="reportingViaLog" class="Boolean">false</property>
          <property name="controlFlow" class="kapow.robot.robomaker.robot.ControlFlow$NextAlternative"/>
        </property>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="1"/>
        <property name="changedProperties" class="java.util.HashSet">
          <element class="String">name</element>
        </property>
      </object>
      <object class="End" id="25"/>
      <object class="Group" id="26">
        <name class="String">Extract Tweet</name>
        <comment>
          <null/>
        </comment>
        <blockBeginStep class="BlockBeginStep" id="27"/>
        <steps class="ArrayList">
          <object class="Transition" serializationversion="3" id="28">
            <property name="name" class="String">Extract Id</property>
            <property name="stepAction" class="ExtractJSON2">
              <property name="dataConverters" class="DataConverters">
                <element class="UnquoteText"/>
              </property>
              <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">tweet.id</property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders">
              <object class="kapow.robot.robomaker.state.document.elementfinder.json.JSONElementFinder">
                <property name="tagRelation" class="InJSONRelation">
                  <property name="tagName" class="ElementName">
                    <property name="name" class="String">1</property>
                  </property>
                </property>
                <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                  <property name="value" class="String">.id_str</property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="1"/>
            <property name="changedProperties" class="java.util.HashSet"/>
          </object>
          <object class="Transition" serializationversion="3" id="29">
            <property name="name" class="String">Extract Text</property>
            <property name="stepAction" class="ExtractJSON2">
              <property name="dataConverters" class="DataConverters">
                <element class="UnquoteText"/>
                <element class="AmpersandDecode"/>
                <element class="EvaluateExpression" serializationversion="0">
                  <property name="expression" class="String">replaceText(INPUT,"\\n"," ")</property>
                </element>
              </property>
              <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">tweet.text</property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders">
              <object class="kapow.robot.robomaker.state.document.elementfinder.json.JSONElementFinder">
                <property name="tagRelation" class="InJSONRelation">
                  <property name="tagName" class="ElementName">
                    <property name="name" class="String">1</property>
                  </property>
                </property>
                <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                  <property name="value" class="String">.text</property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="1"/>
            <property name="changedProperties" class="java.util.HashSet"/>
          </object>
          <object class="Transition" serializationversion="3" id="30">
            <property name="name" class="String">Extract Truncated</property>
            <property name="stepAction" class="ExtractJSON2">
              <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">tweet.truncated</property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders">
              <object class="kapow.robot.robomaker.state.document.elementfinder.json.JSONElementFinder">
                <property name="tagRelation" class="InJSONRelation">
                  <property name="tagName" class="ElementName">
                    <property name="name" class="String">1</property>
                  </property>
                </property>
                <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                  <property name="value" class="String">.truncated</property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="1"/>
            <property name="changedProperties" class="java.util.HashSet"/>
          </object>
          <object class="Transition" serializationversion="3" id="31">
            <property name="name" class="String">Extract User Id</property>
            <property name="stepAction" class="ExtractJSON2">
              <property name="dataConverters" class="DataConverters">
                <element class="UnquoteText"/>
              </property>
              <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">tweet.user_id</property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders">
              <object class="kapow.robot.robomaker.state.document.elementfinder.json.JSONElementFinder">
                <property name="tagRelation" class="InJSONRelation">
                  <property name="tagName" class="ElementName">
                    <property name="name" class="String">1</property>
                  </property>
                </property>
                <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                  <property name="value" class="String">.user.id</property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="1"/>
            <property name="changedProperties" class="java.util.HashSet"/>
          </object>
          <object class="Transition" serializationversion="3" id="32">
            <property name="name" class="String">Extract User Name</property>
            <property name="stepAction" class="ExtractJSON2">
              <property name="dataConverters" class="DataConverters">
                <element class="UnquoteText"/>
              </property>
              <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">tweet.user_name</property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders">
              <object class="kapow.robot.robomaker.state.document.elementfinder.json.JSONElementFinder">
                <property name="tagRelation" class="InJSONRelation">
                  <property name="tagName" class="ElementName">
                    <property name="name" class="String">1</property>
                  </property>
                </property>
                <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                  <property name="value" class="String">.user.name</property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="1"/>
            <property name="changedProperties" class="java.util.HashSet"/>
          </object>
          <object class="Transition" serializationversion="3" id="33">
            <property name="name" class="String">Extract User Screen Name</property>
            <property name="stepAction" class="ExtractJSON2">
              <property name="dataConverters" class="DataConverters">
                <element class="UnquoteText"/>
              </property>
              <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">tweet.user_screen_name</property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders">
              <object class="kapow.robot.robomaker.state.document.elementfinder.json.JSONElementFinder">
                <property name="tagRelation" class="InJSONRelation">
                  <property name="tagName" class="ElementName">
                    <property name="name" class="String">1</property>
                  </property>
                </property>
                <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                  <property name="value" class="String">.user.screen_name</property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="1"/>
            <property name="changedProperties" class="java.util.HashSet"/>
          </object>
          <object class="Transition" serializationversion="3" id="34">
            <property name="name" class="String">Extract User URL</property>
            <property name="stepAction" class="ExtractJSON2">
              <property name="dataConverters" class="DataConverters">
                <element class="UnquoteText"/>
              </property>
              <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">tweet.user_url</property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders">
              <object class="kapow.robot.robomaker.state.document.elementfinder.json.JSONElementFinder">
                <property name="tagRelation" class="InJSONRelation">
                  <property name="tagName" class="ElementName">
                    <property name="name" class="String">1</property>
                  </property>
                </property>
                <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                  <property name="value" class="String">.user.url</property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="1"/>
            <property name="changedProperties" class="java.util.HashSet"/>
          </object>
          <object class="Transition" serializationversion="3" id="35">
            <property name="name" class="String">Extract Source</property>
            <property name="stepAction" class="ExtractJSON2">
              <property name="dataConverters" class="DataConverters">
                <element class="UnquoteText"/>
              </property>
              <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">tweet.source</property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders">
              <object class="kapow.robot.robomaker.state.document.elementfinder.json.JSONElementFinder">
                <property name="tagRelation" class="InJSONRelation">
                  <property name="tagName" class="ElementName">
                    <property name="name" class="String">1</property>
                  </property>
                </property>
                <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                  <property name="value" class="String">.source</property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="1"/>
            <property name="changedProperties" class="java.util.HashSet"/>
          </object>
          <object class="Transition" serializationversion="3" id="36">
            <property name="name" class="String">Extract Entities</property>
            <property name="stepAction" class="ExtractJSON2">
              <property name="dataConverters" class="DataConverters">
                <element class="UnquoteText"/>
              </property>
              <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">tweet.entities</property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders">
              <object class="kapow.robot.robomaker.state.document.elementfinder.json.JSONElementFinder">
                <property name="tagRelation" class="InJSONRelation">
                  <property name="tagName" class="ElementName">
                    <property name="name" class="String">1</property>
                  </property>
                </property>
                <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                  <property name="value" class="String">.entities</property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="1"/>
            <property name="changedProperties" class="java.util.HashSet"/>
          </object>
          <object class="Transition" serializationversion="3" id="37">
            <property name="name" class="String">Extract Retweet Count</property>
            <property name="stepAction" class="ExtractJSON2">
              <property name="dataConverters" class="DataConverters">
                <element class="ExtractNumber"/>
              </property>
              <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">tweet.retweet_count</property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders">
              <object class="kapow.robot.robomaker.state.document.elementfinder.json.JSONElementFinder">
                <property name="tagRelation" class="InJSONRelation">
                  <property name="tagName" class="ElementName">
                    <property name="name" class="String">1</property>
                  </property>
                </property>
                <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                  <property name="value" class="String">.retweet_count</property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="1"/>
            <property name="changedProperties" class="java.util.HashSet"/>
          </object>
          <object class="Transition" serializationversion="3" id="38">
            <property name="name" class="String">Extract Favorite Count</property>
            <property name="stepAction" class="ExtractJSON2">
              <property name="dataConverters" class="DataConverters">
                <element class="ExtractNumber"/>
              </property>
              <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">tweet.favorite_count</property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders">
              <object class="kapow.robot.robomaker.state.document.elementfinder.json.JSONElementFinder">
                <property name="tagRelation" class="InJSONRelation">
                  <property name="tagName" class="ElementName">
                    <property name="name" class="String">1</property>
                  </property>
                </property>
                <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                  <property name="value" class="String">.favorite_count</property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="1"/>
            <property name="changedProperties" class="java.util.HashSet"/>
          </object>
          <object class="Transition" serializationversion="3" id="39">
            <property name="name" class="String">Extract Lang</property>
            <property name="stepAction" class="ExtractJSON2">
              <property name="dataConverters" class="DataConverters">
                <element class="UnquoteText"/>
              </property>
              <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">tweet.lang</property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders">
              <object class="kapow.robot.robomaker.state.document.elementfinder.json.JSONElementFinder">
                <property name="tagRelation" class="InJSONRelation">
                  <property name="tagName" class="ElementName">
                    <property name="name" class="String">1</property>
                  </property>
                </property>
                <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                  <property name="value" class="String">.lang</property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="1"/>
            <property name="changedProperties" class="java.util.HashSet"/>
          </object>
          <object class="Transition" serializationversion="3" id="40">
            <property name="name" class="String">Extract Created</property>
            <property name="stepAction" class="ExtractJSON2">
              <property name="dataConverters" class="DataConverters">
                <element class="ExtractDate">
                  <property name="formats" class="BeanList">
                    <object class="kapow.robot.plugin.common.stringprocessor.datefetcher.PatternBasedDateFormatSpecification">
                      <property name="pattern" class="kapow.robot.plugin.common.support.expression.stringexpr.DateExtractorPatternValueStringExpression">
                        <property name="value" class="String">MMM dd HH:mm:ss </property>
                      </property>
                    </object>
                  </property>
                </element>
              </property>
              <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">tweet.created</property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders">
              <object class="kapow.robot.robomaker.state.document.elementfinder.json.JSONElementFinder">
                <property name="tagRelation" class="InJSONRelation">
                  <property name="tagName" class="ElementName">
                    <property name="name" class="String">1</property>
                  </property>
                </property>
                <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
                  <property name="value" class="String">.created_at</property>
                </property>
              </object>
            </property>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="1"/>
            <property name="changedProperties" class="java.util.HashSet"/>
          </object>
          <object class="Transition" serializationversion="3" id="41">
            <property name="name" class="String">Assign Link</property>
            <property name="stepAction" class="AssignVariable" serializationversion="4">
              <property name="stringExpr" class="Expression" serializationversion="1">
                <property name="text" class="String">"https://twitter.com/"+tweet.user_screen_name+"/status/"+tweet.id</property>
              </property>
              <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">tweet.link</property>
              </property>
            </property>
            <property name="elementFinders" class="ElementFinders"/>
            <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
            <property name="comment">
              <null/>
            </property>
            <property name="enabled" idref="1"/>
            <property name="changedProperties" class="java.util.HashSet"/>
          </object>
        </steps>
        <blockEndStep class="BlockEndStep" id="42"/>
        <edges class="ArrayList">
          <object class="TransitionEdge">
            <from idref="27"/>
            <to idref="28"/>
          </object>
          <object class="TransitionEdge">
            <from idref="28"/>
            <to idref="29"/>
          </object>
          <object class="TransitionEdge">
            <from idref="29"/>
            <to idref="30"/>
          </object>
          <object class="TransitionEdge">
            <from idref="30"/>
            <to idref="31"/>
          </object>
          <object class="TransitionEdge">
            <from idref="31"/>
            <to idref="32"/>
          </object>
          <object class="TransitionEdge">
            <from idref="32"/>
            <to idref="33"/>
          </object>
          <object class="TransitionEdge">
            <from idref="33"/>
            <to idref="34"/>
          </object>
          <object class="TransitionEdge">
            <from idref="34"/>
            <to idref="35"/>
          </object>
          <object class="TransitionEdge">
            <from idref="35"/>
            <to idref="36"/>
          </object>
          <object class="TransitionEdge">
            <from idref="36"/>
            <to idref="37"/>
          </object>
          <object class="TransitionEdge">
            <from idref="37"/>
            <to idref="38"/>
          </object>
          <object class="TransitionEdge">
            <from idref="38"/>
            <to idref="39"/>
          </object>
          <object class="TransitionEdge">
            <from idref="39"/>
            <to idref="40"/>
          </object>
          <object class="TransitionEdge">
            <from idref="40"/>
            <to idref="41"/>
          </object>
          <object class="TransitionEdge">
            <from idref="41"/>
            <to idref="42"/>
          </object>
        </edges>
      </object>
      <object class="Transition" serializationversion="3" id="43">
        <property name="name" class="String">Desktop Automation</property>
        <property name="stepAction" class="CallRL2Robot">
          <property name="inputValueExpression" class="kapow.robot.plugin.common.stepaction.rl2.InputValueBeanList">
            <object class="kapow.robot.plugin.common.stepaction.rl2.InputValue">
              <property name="inputValueExpression" class="kapow.robot.plugin.common.support.expression.multipletype.ComplexVariableAllowedVariableExpression" serializationversion="2">
                <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                  <property name="name" class="String">tweet.text</property>
                </property>
              </property>
            </object>
            <object class="kapow.robot.plugin.common.stepaction.rl2.InputValue">
              <property name="inputValueExpression" class="kapow.robot.plugin.common.support.expression.multipletype.ComplexVariableAllowedVariableExpression" serializationversion="2">
                <property name="variable" class="kapow.robot.plugin.common.support.AttributeName2">
                  <property name="name" class="String">tweet.lang</property>
                </property>
              </property>
            </object>
          </property>
          <property name="outputVariables" class="kapow.robot.plugin.common.stepaction.rl2.OutputVariableBeanList">
            <object class="kapow.robot.plugin.common.stepaction.rl2.OutputVariable">
              <property name="attributeName" class="kapow.robot.plugin.common.support.AttributeName2">
                <property name="name" class="String">tweet.sentiment</property>
              </property>
            </object>
          </property>
          <property name="robot2Bean" class="kapow.robot.plugin.common.stepaction.rl2.Robot2Bean">{
  "meta":{
    "className":"Robot",
    "version":2
  },
  "gizmo":{
    "outputTypes": [{
      "meta":{
        "className":"TypeUse",
        "version":0
      },
      "gizmo":{
        "id": { "string": "Number" }
      }
    }],
    "parameters": [{
      "meta":{
        "className":"VariableDef",
        "version":0
      },
      "gizmo":{
        "id": { "string": "tweet_text" },
        "typ": {
          "meta":{
            "className":"TypeUse",
            "version":0
          },
          "gizmo":{
            "id": { "string": "Text" }
          }
        }
      }
    },
    {
      "meta":{
        "className":"VariableDef",
        "version":0
      },
      "gizmo":{
        "id": { "string": "tweet_lang" },
        "typ": {
          "meta":{
            "className":"TypeUse",
            "version":0
          },
          "gizmo":{
            "id": { "string": "Text" }
          }
        }
      }
    }],
    "treeModes": [],
    "types": [],
    "variables": [{
      "meta":{
        "className":"VariableDef",
        "version":0
      },
      "gizmo":{
        "id": { "string": "text" },
        "typ": {
          "meta":{
            "className":"TypeUse",
            "version":0
          },
          "gizmo":{
            "id": { "string": "Text" }
          }
        }
      }
    },
    {
      "meta":{
        "className":"VariableDef",
        "version":0
      },
      "gizmo":{
        "id": { "string": "sentiment" },
        "typ": {
          "meta":{
            "className":"TypeUse",
            "version":0
          },
          "gizmo":{
            "id": { "string": "Number" }
          }
        }
      }
    }],
    "block": {
      "meta":{
        "className":"Block",
        "version":2
      },
      "gizmo":{
        "steps": [{
          "meta":{
            "className":"AssignStep",
            "version":1
          },
          "gizmo":{
            "name": {
              "meta":{
                "className":"StepName",
                "version":0
              },
              "gizmo":{
                "customName": { "string": "" }
              }
            },
            "comment": {
              "meta":{
                "className":"StepComment",
                "version":0
              },
              "gizmo":{
                "comment": { "string": "" }
              }
            },
            "expression": {
              "meta":{
                "className":"Expression",
                "version":0
              },
              "gizmo":{
                "text": { "string": "=(\"*Language:\"+tweet_lang + \"*\\n\" + tweet_text)" }
              }
            },
            "variable": {
              "meta":{
                "className":"LeftHandSide",
                "version":1
              },
              "gizmo":{
                "text": { "string": "text" }
              }
            }
          }
        },
        {
          "meta":{
            "className":"GuardedChoiceStep",
            "version":1
          },
          "gizmo":{
            "name": {
              "meta":{
                "className":"StepName",
                "version":0
              },
              "gizmo":{
                "customName": { "string": "Close DT Browser" }
              }
            },
            "comment": {
              "meta":{
                "className":"StepComment",
                "version":0
              },
              "gizmo":{
                "comment": { "string": "" }
              }
            },
            "branches": [{
              "meta":{
                "className":"GuardAndBlock",
                "version":3
              },
              "gizmo":{
                "guard": {
                  "meta":{
                    "className":"LocationFoundGuard",
                    "version":0
                  },
                  "gizmo":{
                    "finder": {
                      "meta":{
                        "className":"ComponentFinderWithName",
                        "version":8
                      },
                      "gizmo":{
                        "name": {
                          "meta":{
                            "className":"FinderName",
                            "version":0
                          },
                          "gizmo":{
                            "id": { "string": "" }
                          }
                        },
                        "finder": {
                          "meta":{
                            "className":"ComponentDescriptor",
                            "version":1
                          },
                          "gizmo":{
                            "applicationFinder": {
                              "meta":{
                                "className":"ApplicationDescriptor",
                                "version":1
                              },
                              "gizmo":{
                                "deviceFinder": {
                                  "meta":{
                                    "className":"DeviceReference",
                                    "version":0
                                  },
                                  "gizmo":{
                                    "reference": {
                                      "meta":{
                                        "className":"NamedFinderReference",
                                        "version":0
                                      },
                                      "gizmo":{
                                        "id": { "string": "local" }
                                      }
                                    }
                                  }
                                },
                                "applicationSelector": {
                                  "meta":{
                                    "className":"Expression",
                                    "version":0
                                  },
                                  "gizmo":{
                                    "text": { "string": "dts:nth-of-type(1)" }
                                  }
                                }
                              }
                            },
                            "componentSelector": {
                              "meta":{
                                "className":"Expression",
                                "version":0
                              },
                              "gizmo":{
                                "text": { "string": "button[name=\"close\"]" }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                },
                "block": {
                  "meta":{
                    "className":"Block",
                    "version":2
                  },
                  "gizmo":{
                    "steps": [{
                      "meta":{
                        "className":"MoveMouseStep",
                        "version":1
                      },
                      "gizmo":{
                        "name": {
                          "meta":{
                            "className":"StepName",
                            "version":0
                          },
                          "gizmo":{
                            "customName": { "string": "" }
                          }
                        },
                        "comment": {
                          "meta":{
                            "className":"StepComment",
                            "version":0
                          },
                          "gizmo":{
                            "comment": { "string": "" }
                          }
                        },
                        "finder": {
                          "meta":{
                            "className":"ComponentFinderWithName",
                            "version":8
                          },
                          "gizmo":{
                            "name": {
                              "meta":{
                                "className":"FinderName",
                                "version":0
                              },
                              "gizmo":{
                                "id": { "string": "" }
                              }
                            },
                            "finder": {
                              "meta":{
                                "className":"ComponentReference",
                                "version":0
                              },
                              "gizmo":{
                                "reference": {
                                  "meta":{
                                    "className":"PreviousFinderReference",
                                    "version":0
                                  },
                                  "gizmo":{
                                    
                                  }
                                }
                              }
                            }
                          }
                        },
                        "offset": {
                          "meta":{
                            "className":"NoOffset",
                            "version":0
                          },
                          "gizmo":{
                            
                          }
                        }
                      }
                    },
                    {
                      "meta":{
                        "className":"ClickStep",
                        "version":2
                      },
                      "gizmo":{
                        "name": {
                          "meta":{
                            "className":"StepName",
                            "version":0
                          },
                          "gizmo":{
                            "customName": { "string": "" }
                          }
                        },
                        "comment": {
                          "meta":{
                            "className":"StepComment",
                            "version":0
                          },
                          "gizmo":{
                            "comment": { "string": "" }
                          }
                        },
                        "finder": {
                          "meta":{
                            "className":"ApplicationFinderWithName",
                            "version":5
                          },
                          "gizmo":{
                            "name": {
                              "meta":{
                                "className":"FinderName",
                                "version":0
                              },
                              "gizmo":{
                                "id": { "string": "" }
                              }
                            },
                            "finder": {
                              "meta":{
                                "className":"ApplicationReference",
                                "version":0
                              },
                              "gizmo":{
                                "reference": {
                                  "meta":{
                                    "className":"PreviousFinderReference",
                                    "version":0
                                  },
                                  "gizmo":{
                                    
                                  }
                                }
                              }
                            }
                          }
                        },
                        "mouseAction": {
                          "meta":{
                            "className":"ClickAction",
                            "version":0
                          },
                          "gizmo":{
                            "button": {
                              "meta":{
                                "className":"FixedButton",
                                "version":0
                              },
                              "gizmo":{
                                "button": { "int": "0" }
                              }
                            },
                            "count": {
                              "meta":{
                                "className":"Expression",
                                "version":0
                              },
                              "gizmo":{
                                "text": { "string": "1" }
                              }
                            }
                          }
                        }
                      }
                    }]
                  }
                }
              }
            },
            {
              "meta":{
                "className":"GuardAndBlock",
                "version":3
              },
              "gizmo":{
                "guard": {
                  "meta":{
                    "className":"LocationNotFoundGuard",
                    "version":2
                  },
                  "gizmo":{
                    "finder": {
                      "meta":{
                        "className":"ComponentFinderWithoutName",
                        "version":0
                      },
                      "gizmo":{
                        "finder": {
                          "meta":{
                            "className":"ComponentDescriptor",
                            "version":1
                          },
                          "gizmo":{
                            "applicationFinder": {
                              "meta":{
                                "className":"ApplicationDescriptor",
                                "version":1
                              },
                              "gizmo":{
                                "deviceFinder": {
                                  "meta":{
                                    "className":"DeviceReference",
                                    "version":0
                                  },
                                  "gizmo":{
                                    "reference": {
                                      "meta":{
                                        "className":"NamedFinderReference",
                                        "version":0
                                      },
                                      "gizmo":{
                                        "id": { "string": "local" }
                                      }
                                    }
                                  }
                                },
                                "applicationSelector": {
                                  "meta":{
                                    "className":"Expression",
                                    "version":0
                                  },
                                  "gizmo":{
                                    "text": { "string": "dts:nth-of-type(1)" }
                                  }
                                }
                              }
                            },
                            "componentSelector": {
                              "meta":{
                                "className":"Expression",
                                "version":0
                              },
                              "gizmo":{
                                "text": { "string": "button[name=\"close\"]" }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                },
                "block": {
                  "meta":{
                    "className":"Block",
                    "version":2
                  },
                  "gizmo":{
                    "steps": []
                  }
                }
              }
            }]
          }
        },
        {
          "meta":{
            "className":"OpenDtsStep",
            "version":1
          },
          "gizmo":{
            "name": {
              "meta":{
                "className":"StepName",
                "version":0
              },
              "gizmo":{
                "customName": { "string": "" }
              }
            },
            "comment": {
              "meta":{
                "className":"StepComment",
                "version":0
              },
              "gizmo":{
                "comment": { "string": "" }
              }
            },
            "host": {
              "meta":{
                "className":"Expression",
                "version":0
              },
              "gizmo":{
                "text": { "string": "http:\/\/localhost:50081" }
              }
            },
            "project": {
              "meta":{
                "className":"SentimentDtsProject",
                "version":0
              },
              "gizmo":{
                
              }
            },
            "file": {
              "meta":{
                "className":"Expression",
                "version":0
              },
              "gizmo":{
                "text": { "string": "=text.binary(\"utf8\")" }
              }
            },
            "thinClientHost": {
              "meta":{
                "className":"Expression",
                "version":0
              },
              "gizmo":{
                "text": { "string": "" }
              }
            },
            "callbackUrl": {
              "meta":{
                "className":"Expression",
                "version":0
              },
              "gizmo":{
                "text": { "string": "" }
              }
            }
          }
        },
        {
          "meta":{
            "className":"GuardedChoiceStep",
            "version":1
          },
          "gizmo":{
            "name": {
              "meta":{
                "className":"StepName",
                "version":0
              },
              "gizmo":{
                "customName": { "string": "" }
              }
            },
            "comment": {
              "meta":{
                "className":"StepComment",
                "version":0
              },
              "gizmo":{
                "comment": { "string": "" }
              }
            },
            "branches": [{
              "meta":{
                "className":"GuardAndBlock",
                "version":3
              },
              "gizmo":{
                "guard": {
                  "meta":{
                    "className":"LocationFoundGuard",
                    "version":0
                  },
                  "gizmo":{
                    "finder": {
                      "meta":{
                        "className":"ComponentFinderWithName",
                        "version":8
                      },
                      "gizmo":{
                        "name": {
                          "meta":{
                            "className":"FinderName",
                            "version":0
                          },
                          "gizmo":{
                            "id": { "string": "" }
                          }
                        },
                        "finder": {
                          "meta":{
                            "className":"ComponentDescriptor",
                            "version":1
                          },
                          "gizmo":{
                            "applicationFinder": {
                              "meta":{
                                "className":"ApplicationDescriptor",
                                "version":1
                              },
                              "gizmo":{
                                "deviceFinder": {
                                  "meta":{
                                    "className":"DeviceReference",
                                    "version":0
                                  },
                                  "gizmo":{
                                    "reference": {
                                      "meta":{
                                        "className":"NamedFinderReference",
                                        "version":0
                                      },
                                      "gizmo":{
                                        "id": { "string": "local" }
                                      }
                                    }
                                  }
                                },
                                "applicationSelector": {
                                  "meta":{
                                    "className":"Expression",
                                    "version":0
                                  },
                                  "gizmo":{
                                    "text": { "string": "dts" }
                                  }
                                }
                              }
                            },
                            "componentSelector": {
                              "meta":{
                                "className":"Expression",
                                "version":0
                              },
                              "gizmo":{
                                "text": { "string": "label[name=\"status_message\"]" }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                },
                "block": {
                  "meta":{
                    "className":"Block",
                    "version":2
                  },
                  "gizmo":{
                    "steps": []
                  }
                }
              }
            }]
          }
        },
        {
          "meta":{
            "className":"GuardedChoiceStep",
            "version":1
          },
          "gizmo":{
            "name": {
              "meta":{
                "className":"StepName",
                "version":0
              },
              "gizmo":{
                "customName": { "string": "Extract Sentiment" }
              }
            },
            "comment": {
              "meta":{
                "className":"StepComment",
                "version":0
              },
              "gizmo":{
                "comment": { "string": "" }
              }
            },
            "branches": [{
              "meta":{
                "className":"GuardAndBlock",
                "version":3
              },
              "gizmo":{
                "guard": {
                  "meta":{
                    "className":"LocationFoundGuard",
                    "version":0
                  },
                  "gizmo":{
                    "finder": {
                      "meta":{
                        "className":"ComponentFinderWithName",
                        "version":8
                      },
                      "gizmo":{
                        "name": {
                          "meta":{
                            "className":"FinderName",
                            "version":0
                          },
                          "gizmo":{
                            "id": { "string": "" }
                          }
                        },
                        "finder": {
                          "meta":{
                            "className":"ComponentDescriptor",
                            "version":1
                          },
                          "gizmo":{
                            "applicationFinder": {
                              "meta":{
                                "className":"ApplicationDescriptor",
                                "version":1
                              },
                              "gizmo":{
                                "deviceFinder": {
                                  "meta":{
                                    "className":"DeviceReference",
                                    "version":0
                                  },
                                  "gizmo":{
                                    "reference": {
                                      "meta":{
                                        "className":"NamedFinderReference",
                                        "version":0
                                      },
                                      "gizmo":{
                                        "id": { "string": "local" }
                                      }
                                    }
                                  }
                                },
                                "applicationSelector": {
                                  "meta":{
                                    "className":"Expression",
                                    "version":0
                                  },
                                  "gizmo":{
                                    "text": { "string": "dts" }
                                  }
                                }
                              }
                            },
                            "componentSelector": {
                              "meta":{
                                "className":"Expression",
                                "version":0
                              },
                              "gizmo":{
                                "text": { "string": "document field cell[column=\"Sentiment\"]" }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                },
                "block": {
                  "meta":{
                    "className":"Block",
                    "version":2
                  },
                  "gizmo":{
                    "steps": [{
                      "meta":{
                        "className":"ConverterGroupStep",
                        "version":0
                      },
                      "gizmo":{
                        "name": {
                          "meta":{
                            "className":"StepName",
                            "version":0
                          },
                          "gizmo":{
                            "customName": { "string": "" }
                          }
                        },
                        "comment": {
                          "meta":{
                            "className":"StepComment",
                            "version":0
                          },
                          "gizmo":{
                            "comment": { "string": "" }
                          }
                        },
                        "converterSource": {
                          "meta":{
                            "className":"ExtractValueSource",
                            "version":0
                          },
                          "gizmo":{
                            "finder": {
                              "meta":{
                                "className":"ComponentFinderWithName",
                                "version":8
                              },
                              "gizmo":{
                                "name": {
                                  "meta":{
                                    "className":"FinderName",
                                    "version":0
                                  },
                                  "gizmo":{
                                    "id": { "string": "" }
                                  }
                                },
                                "finder": {
                                  "meta":{
                                    "className":"ComponentReference",
                                    "version":0
                                  },
                                  "gizmo":{
                                    "reference": {
                                      "meta":{
                                        "className":"PreviousFinderReference",
                                        "version":0
                                      },
                                      "gizmo":{
                                        
                                      }
                                    }
                                  }
                                }
                              }
                            },
                            "extractionType": {
                              "meta":{
                                "className":"AttributeExtraction",
                                "version":0
                              },
                              "gizmo":{
                                "name": {
                                  "meta":{
                                    "className":"Expression",
                                    "version":0
                                  },
                                  "gizmo":{
                                    "text": { "string": "text" }
                                  }
                                }
                              }
                            }
                          }
                        },
                        "block": {
                          "meta":{
                            "className":"Block",
                            "version":2
                          },
                          "gizmo":{
                            "steps": [{
                              "meta":{
                                "className":"EvaluateExpressionStep",
                                "version":0
                              },
                              "gizmo":{
                                "name": {
                                  "meta":{
                                    "className":"StepName",
                                    "version":0
                                  },
                                  "gizmo":{
                                    "customName": { "string": "" }
                                  }
                                },
                                "comment": {
                                  "meta":{
                                    "className":"StepComment",
                                    "version":0
                                  },
                                  "gizmo":{
                                    "comment": { "string": "" }
                                  }
                                },
                                "expression": {
                                  "meta":{
                                    "className":"Expression",
                                    "version":0
                                  },
                                  "gizmo":{
                                    "text": { "string": "=$current.number()" }
                                  }
                                }
                              }
                            },
                            {
                              "meta":{
                                "className":"StoreCurrentInStep",
                                "version":0
                              },
                              "gizmo":{
                                "name": {
                                  "meta":{
                                    "className":"StepName",
                                    "version":0
                                  },
                                  "gizmo":{
                                    "customName": { "string": "" }
                                  }
                                },
                                "comment": {
                                  "meta":{
                                    "className":"StepComment",
                                    "version":0
                                  },
                                  "gizmo":{
                                    "comment": { "string": "" }
                                  }
                                },
                                "leftHandSide": {
                                  "meta":{
                                    "className":"LeftHandSide",
                                    "version":1
                                  },
                                  "gizmo":{
                                    "text": { "string": "sentiment" }
                                  }
                                }
                              }
                            }]
                          }
                        }
                      }
                    }]
                  }
                }
              }
            }]
          }
        },
        {
          "meta":{
            "className":"ReturnStep",
            "version":1
          },
          "gizmo":{
            "name": {
              "meta":{
                "className":"StepName",
                "version":0
              },
              "gizmo":{
                "customName": { "string": "" }
              }
            },
            "comment": {
              "meta":{
                "className":"StepComment",
                "version":0
              },
              "gizmo":{
                "comment": { "string": "" }
              }
            },
            "values": [{
              "meta":{
                "className":"Expression",
                "version":0
              },
              "gizmo":{
                "text": { "string": "=sentiment" }
              }
            }]
          }
        }]
      }
    }
  }
}</property>
        </property>
        <property name="elementFinders" idref="20"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" idref="1"/>
        <property name="changedProperties" class="java.util.HashSet"/>
      </object>
      <object class="Transition" serializationversion="3" id="44">
        <property name="name" class="String">Write Log</property>
        <property name="stepAction" class="WriteLog2">
          <property name="expression" class="Expression" serializationversion="1">
            <property name="text" class="String">"*Language:"+tweet.lang+"*\t"+tweet.text + " ("+tweet.sentiment+") "</property>
          </property>
        </property>
        <property name="elementFinders" class="ElementFinders"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment" class="String">The tweet object now contains the sentiment of the tweet.</property>
        <property name="enabled" idref="1"/>
        <property name="changedProperties" class="java.util.HashSet"/>
      </object>
      <object class="End" id="45"/>
    </steps>
    <blockEndStep class="BlockEndStep"/>
    <edges class="ArrayList">
      <object class="TransitionEdge">
        <from idref="2"/>
        <to idref="3"/>
      </object>
      <object class="TransitionEdge">
        <from idref="3"/>
        <to idref="10"/>
      </object>
      <object class="TransitionEdge">
        <from idref="10"/>
        <to idref="18"/>
      </object>
      <object class="TransitionEdge">
        <from idref="18"/>
        <to idref="19"/>
      </object>
      <object class="TransitionEdge">
        <from idref="19"/>
        <to idref="21"/>
      </object>
      <object class="TransitionEdge">
        <from idref="21"/>
        <to idref="22"/>
      </object>
      <object class="TransitionEdge">
        <from idref="22"/>
        <to idref="23"/>
      </object>
      <object class="TransitionEdge">
        <from idref="23"/>
        <to idref="24"/>
      </object>
      <object class="TransitionEdge">
        <from idref="23"/>
        <to idref="26"/>
      </object>
      <object class="TransitionEdge">
        <from idref="24"/>
        <to idref="25"/>
      </object>
      <object class="TransitionEdge">
        <from idref="26"/>
        <to idref="43"/>
      </object>
      <object class="TransitionEdge">
        <from idref="43"/>
        <to idref="44"/>
      </object>
      <object class="TransitionEdge">
        <from idref="44"/>
        <to idref="45"/>
      </object>
    </edges>
  </property>
  <property name="browserConfigurationSpecification" class="BrowserConfigurationSpecificationWebKit" serializationversion="26"/>
</object>
