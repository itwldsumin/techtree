package com.posep.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;
import javax.inject.Inject;
import com.posep.domain.QnaVO;
import com.posep.domain.SearchCriteria;

@Repository
public class QnaDAOImpl implements QnaDAO {

   @Inject
   private SqlSession session;

   private static String namespace = "com.posep.mapper.QnaMapper";

   @Override
   public void create(QnaVO QnaVO) throws Exception {
      session.insert(namespace + ".create", QnaVO);

   }

   @Override
   public QnaVO read(int qnaNo) throws Exception {
      return session.selectOne(namespace + ".read", qnaNo);

   }

   @Override
   public void update(QnaVO QnaVO) throws Exception {
      session.update(namespace + ".update", QnaVO);

   }

   @Override
   public void addelete(int qnaNo) throws Exception {
      session.delete(namespace + ".delete", qnaNo);

   }

   @Override
   public List<QnaVO> listSearch(SearchCriteria cri) throws Exception {
      // TODO Auto-generated method stub
      return session.selectList(namespace + ".listSearch", cri);
   }

   @Override
   public int listSearchCount(SearchCriteria cri) throws Exception {
      // TODO Auto-generated method stub
      return session.selectOne(namespace + ".listSearchCount", cri);
   }

   @Override
   public List<QnaVO> mQList(SearchCriteria cri) throws Exception {
      return session.selectList(namespace+".mQList", cri);
   }

   @Override
   public List<QnaVO> tQList(SearchCriteria cri) throws Exception {
      return session.selectList(namespace+".tQList", cri);
   }

   @Override
   public int mQListCount(SearchCriteria cri) {
      return session.selectOne(namespace+".mQListCount", cri);
   }

   @Override
   public int tQListCount(SearchCriteria cri) {
      return session.selectOne(namespace+".mQListCount", cri);
   }

   /*
    * //회원 :: 최신 문의글 5개 대시보드 public List<consultDTO> userConList(SearchCriteria
    * cri) throws Exception; //회원 :: 최신 협업글 5개 대시보드 public List<coopDTO>
    * userCoopList(SearchCriteria cri) throws Exception;
    * 
    * //기술인 :: 최신 문의글 5개 대시보드 public List<consultDTO> techConList(SearchCriteria
    * cri) throws Exception; //기술인:: 최신 협업글 5개 대시보드 public List<coopDTO>
    * techCoopList(SearchCriteria cri) throws Exception;
    */
}