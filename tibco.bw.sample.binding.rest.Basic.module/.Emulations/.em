<?xml version="1.0" encoding="ASCII"?>
<emulation:EmulationData xmlns:emulation="http:///emulation.ecore" isBW="true" location="tibco.bw.sample.binding.rest.Basic">
  <ProcessNode Id="tibco.bw.sample.binding.rest.basic.BooksFile" Name="tibco.bw.sample.binding.rest.basic.BooksFile" ModelType="BW" moduleName="tibco.bw.sample.binding.rest.Basic">
    <Operation Name="PostBooksToFile" serviceName="BooksFileService">
      <Inputs Id="7a678c40-2c25-4ca5-ba56-4f87f95864bctibco.bw.sample.binding.rest.Basic_tibco.bw.sample.binding.rest.basic.BooksFile_PostBooksToFile_operationInput" Name="operationInput" isDefault="true"/>
    </Operation>
    <Operation Name="GetBooksFromFile" serviceName="BooksFileService">
      <Inputs Id="bb82a6ff-2979-400a-a605-b9b50845a159tibco.bw.sample.binding.rest.Basic_tibco.bw.sample.binding.rest.basic.BooksFile_GetBooksFromFile_operationInput0" Name="operationInput0" isDefault="true"/>
    </Operation>
  </ProcessNode>
  <ProcessNode Id="tibco.bw.sample.binding.rest.basic.SOAPService" Name="tibco.bw.sample.binding.rest.basic.SOAPService" ModelType="BW" moduleName="tibco.bw.sample.binding.rest.Basic">
    <Operation Name="GetBooks" serviceName="GetBooksByAuthor">
      <Inputs Id="1027ec56-7bfd-4235-9f01-9d3c8736f14ctibco.bw.sample.binding.rest.Basic_tibco.bw.sample.binding.rest.basic.SOAPService_GetBooks_Request" Name="Request" isDefault="true"/>
    </Operation>
  </ProcessNode>
  <ProcessNode Id="tibco.bw.sample.binding.rest.basic.SP_FileLoad" Name="tibco.bw.sample.binding.rest.basic.SP_FileLoad" ModelType="BW" moduleName="tibco.bw.sample.binding.rest.Basic">
    <Operation Name="callProcess" serviceName="tibco.bw.sample.binding.rest.basic.SP_FileLoad">
      <Inputs Id="7fbc3b30-c937-478b-b2f3-4f11782c1963tibco.bw.sample.binding.rest.Basic_tibco.bw.sample.binding.rest.basic.SP_FileLoad_callProcess_Start" Name="Start" isDefault="true" type="CALLPROCESS"/>
    </Operation>
  </ProcessNode>
  <ProcessNode Id="tibco.bw.sample.binding.rest.basic.books" Name="tibco.bw.sample.binding.rest.basic.books" ModelType="BW" moduleName="tibco.bw.sample.binding.rest.Basic">
    <restNode Name="books">
      <Operation Name="/books" serviceName="/books" restOperationName="POST">
        <Inputs Id="tibco.bw.sample.binding.rest.Basic_tibco.bw.sample.binding.rest.basic.books_/books_postInput" Name="postInput" isDefault="true" restURL="http://localhost:12001"/>
      </Operation>
      <Operation Name="/books" serviceName="/books" restOperationName="GET">
        <Inputs Id="tibco.bw.sample.binding.rest.Basic_tibco.bw.sample.binding.rest.basic.books_/books_getInput" Name="getInput" isDefault="true" restURL="http://localhost:12001"/>
      </Operation>
    </restNode>
  </ProcessNode>
  <ProcessNode Id="unittestdemoproject.SubProcesswithActivityAssertion" Name="unittestdemoproject.SubProcesswithActivityAssertion" ModelType="BW" moduleName="tibco.bw.sample.binding.rest.Basic">
    <Operation Name="callProcess" serviceName="unittestdemoproject.SubProcesswithActivityAssertion">
      <Inputs Id="d45bb174-fc12-487a-a900-e5af5932403dtibco.bw.sample.binding.rest.Basic_unittestdemoproject.SubProcesswithActivityAssertion_callProcess_Start" Name="Start" isDefault="true" type="CALLPROCESS"/>
    </Operation>
  </ProcessNode>
  <ProcessNode Id="tibco.bw.sample.binding.rest.basic.SP_BookDetails" Name="tibco.bw.sample.binding.rest.basic.SP_BookDetails" ModelType="BW" moduleName="tibco.bw.sample.binding.rest.Basic">
    <Operation Name="callProcess" serviceName="tibco.bw.sample.binding.rest.basic.SP_BookDetails">
      <Inputs Id="479c4406-541a-46e3-aded-f486106cf965tibco.bw.sample.binding.rest.Basic_tibco.bw.sample.binding.rest.basic.SP_BookDetails_callProcess_Start" Name="Start" isDefault="true" type="CALLPROCESS"/>
    </Operation>
  </ProcessNode>
</emulation:EmulationData>
